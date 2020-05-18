# == Schema Information
#
# Table name: circuits
#
#  id         :bigint(8)        not null, primary key
#  code       :string           not null
#  name       :string           not null
#  url        :string
#  google_map :jsonb
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Circuit < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates_presence_of :code, :name, :google_map
end
