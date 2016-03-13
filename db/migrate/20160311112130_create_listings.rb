class CreateListings < ActiveRecord::Migration
  def change

    create_table :listings, id: false do |t|
      t.primary_key   "listing_id"
      t.integer       "owner_id",                limit: 4,   null: false
      t.string        "title",                   limit: 255, null: false
      t.string        "description",             limit: 255, null: false
      t.string        "images",                  limit: 255
      t.string        "category",                limit: 255, null: false
      t.integer       "borrow_length",           limit: 4,   null: false
      t.date          "date_created",                        null: false
      t.date          "date_modified"
    end
  end
end
