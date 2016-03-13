class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges, id: false do |t|
      t.primary_key :exchange_id, null: false
      t.foreign_key :listings_id, null: false
      t.date :borrowed_on,        null: false
      t.date :returned_on
      t.foreign_key :borrower_id, null: false
      t.foreign_key :lender_id,   null: false
    end
  end
end
