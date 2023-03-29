class CreateCatTrans < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_trans do |t|
      t.references :categories, null: false, foreign_key: true
      t.references :trans, null: false, foreign_key: true

      t.timestamps
    end
  end
end
