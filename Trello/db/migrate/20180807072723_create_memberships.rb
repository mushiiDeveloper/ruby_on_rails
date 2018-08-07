class CreateMemberships < ActiveRecord::Migration[5.2]
  def change
    create_join_table :users, :dashboards, table_name: :memberships do |t|
      t.index :user_id
      t.index :dashboard_id
    end
  end
end
