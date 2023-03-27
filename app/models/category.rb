class Category < ApplicationRecord

  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :cattrans, class_name: 'CatTran'
  has_many :trans, through: :cattrans 
  def total_amount
    total = 0
    cattrans.each do |item|
      total += item.trans.amount
    end
    total
  end 
end
