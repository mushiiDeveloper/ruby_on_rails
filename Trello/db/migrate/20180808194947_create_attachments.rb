class CreateAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :attachments do |t|
      t.integer :attachable
      t.string :attachable_type
      t.timestamps
    end
  end
end
