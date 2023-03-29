class CatTran < ApplicationRecord
  belongs_to :categories
  belongs_to :trans
end
