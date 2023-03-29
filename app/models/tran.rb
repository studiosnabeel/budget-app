class Tran < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: { greater_than: 0 }

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :cattrans, class_name: 'CatTran'
  has_many :categories, through: :cattrans
  accepts_nested_attributes_for :cattrans
end
