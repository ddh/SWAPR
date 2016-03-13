class CreateExchanges < ActiveRecord::Migration
  def change
    create_table :exchanges, id: false do |t|
      t.primary_key :exchange_id
      t.integer  :listings_id, null: false
      t.date        :borrowed_on,        null: false
      t.date        :returned_on
      t.integer  :borrower_id, null: false
      t.integer  :lender_id,   null: false
    end
  end
end
