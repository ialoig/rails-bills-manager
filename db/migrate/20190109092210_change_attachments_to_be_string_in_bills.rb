class ChangeAttachmentsToBeStringInBills < ActiveRecord::Migration[5.2]
  def change
  	change_column :bills, :attachments, :string
  end
end
