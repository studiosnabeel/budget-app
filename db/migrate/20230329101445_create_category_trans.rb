class CreateCategoryTrans < ActiveRecord::Migration[7.0]
  def change
    create_table :category_trans do |t|
      t.references :category, null: false, foreign_key: true
      t.references :tran, null: false, foreign_key: true
      t.timestamps
    end
  end
end
