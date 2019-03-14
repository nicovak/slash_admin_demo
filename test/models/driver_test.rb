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

require 'test_helper'

class DriverTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
