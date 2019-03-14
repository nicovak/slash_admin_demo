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

require 'test_helper'

class CircuitTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
