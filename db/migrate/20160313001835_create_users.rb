class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users, id: false do |t|
      t.primary_key :user_id
      t.string      :name
      t.string      :address
      t.string      :city
      t.string      :state
      t.string      :zip
      t.string      :phone
      t.string      :email

      t.timestamps null: false
    end
  end
end
