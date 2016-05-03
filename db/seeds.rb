# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


300.times do |i|
  if i.even?
    Customer.create(name: Faker::Company.name,
                    city: Faker::Address.city,
                    zipcode: Faker::Address.zip.to_i,
                    state: Faker::Address.state_abbr,
                    email: Faker::Internet.email,
                    employees: (rand * 100).to_i)
  else
    Employee.create(name: Faker::Name.name,
                    city: Faker::Address.city,
                    zipcode: Faker::Address.zip.to_i,
                    state: Faker::Address.state_abbr,
                    email: Faker::Internet.email,
                    employees: (rand * 100).to_i)
  end
end