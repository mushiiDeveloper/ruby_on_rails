class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :title
      t.references :dashboard_id, foreign_key: true

      t.timestamps
    end
  end
end
