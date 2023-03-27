class User < ApplicationRecord

  validates :name, presence: true
  validates :photo, presence: true
  has_many :categories
  has_many :trans
end
