class AddCompanyForeignKeyToBill < ActiveRecord::Migration[5.1]
  def change
  	add_column :bills, :company_id, :integer
  	add_index :bills, :company_id
  end
end
