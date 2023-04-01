class Tran < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :category_trans
  has_many :categories, through: :category_trans
end
