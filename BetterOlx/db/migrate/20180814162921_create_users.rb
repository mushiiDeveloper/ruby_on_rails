class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username, null: false
      t.string :password, null: false
      t.string :email, null: false
      t.string :phone_number, null: false
      t.belongs_to :city, index: true

      t.timestamps
    end
  end
end
