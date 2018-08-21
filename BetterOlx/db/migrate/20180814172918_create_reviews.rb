class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :text
      t.belongs_to :author
      t.integer :feedbacked_id
      t.string :feedbacked_type

      t.timestamps
    end
  end
end
