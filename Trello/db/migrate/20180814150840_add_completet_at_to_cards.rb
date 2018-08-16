class AddCompletetAtToCards < ActiveRecord::Migration[5.2]
  def change
    change_column :cards, :completet_at, :string, default: nil
  end
end
