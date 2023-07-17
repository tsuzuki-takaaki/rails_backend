# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  age        :integer          not null
#  email      :string           not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
