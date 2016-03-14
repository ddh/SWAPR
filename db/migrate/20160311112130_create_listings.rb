class CreateListings < ActiveRecord::Migration
  def change

    create_table :listings do |t|
      t.string :title, limit: 255, null: false
      t.text :description, limit: 255, null: false
      t.string :category, limit: 255, null: false
      t.integer :borrow_length, limit: 4, null: false
      t.timestamps null: false
    end
  end
end
