class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :confirmable, :validatable

  # after_create :auto_confirm

  validates :name, presence: true
  # validates :photo, presence: true
  has_many :categories
  has_many :trans

end
