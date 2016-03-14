class AddListingReferenceToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :listing, index: true
    add_index :users, [:listing_id, :created_at]
  end
end
