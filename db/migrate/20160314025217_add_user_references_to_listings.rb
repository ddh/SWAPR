class AddUserReferencesToListings < ActiveRecord::Migration
  def change
    add_reference :listings, :user, index: true
    add_index :listings, [:user_id, :created_at]
  end
end
