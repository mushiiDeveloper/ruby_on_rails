class CreateCardLabels < ActiveRecord::Migration[5.2]
  def change
    create_table :cards_labels do |t|
      t.belongs_to :card
      t.belongs_to :label
    end
  end
end
