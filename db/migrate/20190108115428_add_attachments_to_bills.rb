class AddAttachmentsToBills < ActiveRecord::Migration[5.2]
  def change
    add_column :bills, :attachments, :json
  end
end
