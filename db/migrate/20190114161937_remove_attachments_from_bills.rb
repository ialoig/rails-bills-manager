class RemoveAttachmentsFromBills < ActiveRecord::Migration[5.2]
  def change
  	remove_column :bills, :attachments
  end
end
