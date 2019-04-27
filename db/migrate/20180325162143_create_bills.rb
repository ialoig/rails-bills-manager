class CreateBills < ActiveRecord::Migration[5.1]
  def change
    create_table :bills do |t|
      t.text :name
      t.datetime :period
      t.float :amount
      t.datetime :deadline
      t.boolean :paid

      t.timestamps
    end
  end
end
