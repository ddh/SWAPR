# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Listing.create(listing_id: 1, title: 'Item 1', owner_id: 1, borrow_length: 4, date_created: '2016-02-11', category: 'Items', description: 'This is item 1')
Listing.create(listing_id: 2, title: 'Item 2', owner_id: 2, borrow_length: 5, date_created: '2016-02-13', category: 'Items', description: 'This is item 2')
Listing.create(listing_id: 3, title: 'Item 3', owner_id: 3, borrow_length: 6, date_created: '2016-02-17', category: 'Items', description: 'This is item 3')

User.create(name: 'User 1', address: '1234 E Street', city: 'Tacoma', state: 'Washington', zip: '984xx', phone: '253-xxx-xxx', email: 'user@email.com')
