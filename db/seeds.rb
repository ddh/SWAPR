# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# Create an Admin account
User.create(name: 'Admin',
            address: '1234 Admin Street',
            city: 'Administration',
            state: 'Washington',
            zip: '11111',
            phone: '999-999-9999',
            email: 'admin@example.com',
            password: 'adminpassword',
            password_confirmation: 'adminpassword',
            admin: true)

# Create some fake users:
20.times do |user|
  name = Faker::Name.name
  email = "testuser-#{user+1}@example.com"
  password = "password"
  address = Faker::Address.street_address
  city = Faker::Address.city
  state = Faker::Address.state_abbr
  zip = Faker::Address.zip
  phone = Faker::PhoneNumber.phone_number

  User.create(name: name,
              email: email,
              password: password,
              password_confirmation: password,
              address: address,
              city: city,
              state: state,
              zip: zip,
              phone: phone)
end
