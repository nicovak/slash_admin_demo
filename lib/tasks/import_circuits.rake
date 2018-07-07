require 'csv'

prefix = "#{Rails.root}/lib/tasks/data/"

namespace :import do
  desc 'Import des circuits'
  task circuits: :environment do
    csv_text = File.read("#{prefix}circuits.csv")
    csv = CSV.parse(csv_text, headers: true, col_sep: ',')
    count = 0

    csv.each do |row|
      Circuit.create!(
        code: row['circuitRef'],
        name: row['name']
      )
      count += 1
    end

    puts "\n Import des circuits: #{count} nouveaux"
  end
end
