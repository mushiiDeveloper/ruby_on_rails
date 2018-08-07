class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :memberships do |t|
      t.string :user,
      t.references :dashboard, foreign_key: true

      t.timestamps
    end
  end
end
