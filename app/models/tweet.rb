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
class Tweet < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :content, presence: true

  scope :weekly, -> { where(created_at: Time.current.beginning_of_week..Time.current.end_of_week) }
  scope :monthly, -> { where(created_at: Time.current.beginning_of_month..Time.current.end_of_month) }
end
