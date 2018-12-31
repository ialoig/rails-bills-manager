class ChangeNameColumn < ActiveRecord::Migration[5.2]
  def change
  	rename_column :bills, :name, :description
  end
end
