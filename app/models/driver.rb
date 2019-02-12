class Driver < ApplicationRecord
  mount_uploader :image, ImageUploader

  def name
    first_name + ' ' + last_name
  end
end
