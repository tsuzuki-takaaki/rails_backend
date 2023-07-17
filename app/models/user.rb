class User < ApplicationRecord
  has_many :tweets

  validates :name, presence: true
  validates :age, presence: true
  validates :email, presence: true
end
