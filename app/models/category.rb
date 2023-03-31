class Category < ApplicationRecord
  validates :name, presence: true
  validates :icon, presence: true

  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :category_trans, dependent: :destroy
  has_many :trans, through: :category_trans
  def total_amount
    trans.sum(:amount).round(2)
  end
end
