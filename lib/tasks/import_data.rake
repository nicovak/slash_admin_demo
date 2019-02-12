require 'csv'

prefix = "#{Rails.root}/lib/tasks/data/"
path_files = {
  circuits: prefix + 'circuits.csv',
  constructors: prefix + 'constructors.csv',
  drivers: prefix + 'drivers.csv',
}

namespace :import do
  desc 'Check path files'
  task :check_paths do
    path_files.each do |name, path|
      if File.exist?(path) || File.directory?(path)
        puts "[OK] - Load #{name} : #{path}"
      else
        abort("[KO] - Load #{name} : #{path}")
      end
    end
  end

  desc 'Import data'
  task data: [:environment, :check_paths] do
    Constructor.delete_all
    Circuit.delete_all
    Driver.delete_all

    path_files.each do |name, path|
      csv_text = File.read(path)
      csv = CSV.parse(csv_text, headers: true, col_sep: ';')

      count = 0

      csv.each do |row|
        case name
        when :circuits
          circuit = Circuit.new(
            code: row['circuitRef'],
            name: row['name'],
            url: row['url']
          )
          if row['lat'].present? && row['lng'].present?
            latlng = row['lat'] + ',' + row['lng']
            url = URI("https://maps.googleapis.com/maps/api/geocode/json?key=#{ENV['GOOGLE_MAP_KEY']}&libraries=places&latlng=#{latlng}")
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true
            http.verify_mode = OpenSSL::SSL::VERIFY_NONE
            request = Net::HTTP::Get.new(url)

            response = http.request(request)
            response_data = JSON.parse(response.body)

            address_datas = {}
            address_datas[:location] = response_data['results'][0]['geometry']['location']
            address_datas[:formatted_address] = response_data['results'][0]['formatted_address']
            response_data['results'][0]['address_components'].each do |val|
              address_datas[val['types'][0]] = val['long_name']
            end

            circuit.google_map = address_datas
          end
          circuit.save!
        when :constructors
          constructor = Constructor.new(
            code: row['constructorRef'],
            name: row['name'],
            nationality: row['nationality'],
            url: row['url']
          )
          constructor.save!
        when :drivers
          driver = Driver.new(
            code: row['code'],
            first_name: row['forename'],
            last_name: row['surname'],
            nationality: row['nationality'],
            url: row['url'],
            date_of_birth: Date.parse(row['dob']),
            )
          driver.save!
        else
          puts 'ERROR'
        end
        count += 1
      end

      puts "\n Import #{name} : #{count}"
    end
  end
end
