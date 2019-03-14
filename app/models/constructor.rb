# == Schema Information
#
# Table name: constructors
#
#  id          :bigint(8)        not null, primary key
#  code        :string           not null
#  name        :string           not null
#  nationality :string           not null
#  url         :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Constructor < ApplicationRecord
  mount_uploader :image, ImageUploader
end
