# == Schema Information
#
# Table name: tweets
#
#  id         :bigint           not null, primary key
#  content    :string
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_tweets_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
require "test_helper"

class TweetTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
