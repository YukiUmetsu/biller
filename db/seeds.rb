# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


300.times do |i|
  type =  i.even? ? "Customer" : "Employee"
  Account.create(type: type, name: Forgery(:name).company_name + " " + Faker::Lorem.characters(5), email: Forgery('email').address, about: Faker::Lorem.characters(50), zipcode: Faker::Address.zip, state: Forgery('address').state_abbrev, city: Faker::Address.city, employees: Forgery(:basic).number(:at_least => 10, :at_most => 300))
end