class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :description
      t.datetime :due_date
      t.belongs_to :list
      t.date

      t.timestamps
    end
  end
end
