class CreateUserCardAssignments < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :cards, table_name: :user_card_assignments do  | t |
      t.index :user_id
      t.index :card_id

      t.timestamps
    end
  end
end
