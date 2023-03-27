class CreateCatTrans < ActiveRecord::Migration[7.0]
  def change
    create_table :cat_trans do |t|

      t.timestamps
    end
  end
end
