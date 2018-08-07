class CreateDashboards < ActiveRecord::Migration[5.2]
  def change
    create_table :dashboards do |t|
      t.string :title, null: false
      t.boolean :public, default: true
      t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
