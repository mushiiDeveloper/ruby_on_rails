class CreateUserCardAssigments < ActiveRecord::Migration[5.2]
  def change
    create_table :user_card_assigments do |t|

      t.timestamps
    end
  end
end
