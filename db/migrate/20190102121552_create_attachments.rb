class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.references :bill, foreign_key: true
      t.string :attachment

      t.timestamps
    end
  end
end
