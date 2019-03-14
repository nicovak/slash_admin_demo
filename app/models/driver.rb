# == Schema Information
#
# Table name: drivers
#
#  id            :bigint(8)        not null, primary key
#  code          :string
#  first_name    :string           not null
#  last_name     :string           not null
#  nationality   :string           not null
#  date_of_birth :date             not null
#  url           :string
#  image         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Driver < ApplicationRecord
  mount_uploader :image, ImageUploader

  def name
    first_name + ' ' + last_name
  end
end
