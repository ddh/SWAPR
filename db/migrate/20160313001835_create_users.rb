class CreateUsers < ActiveRecord::Migration
  def change

    create_table :users, id: false do |t|
      t.primary_key :user_id
      t.string      :name,          null: false
      t.string      :address,       null: false
      t.string      :city,          null: false
      t.string      :state,         null: false
      t.string      :zip,           null: false
      t.string      :phone
      t.string      :email,         null: false
      t.string      :password,      null: false
    end
  end
end
