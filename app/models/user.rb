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
class User < ApplicationRecord
  has_many :tweets

  validates :name, presence: true
  validates :age, presence: true
  validates :email, presence: true
end
