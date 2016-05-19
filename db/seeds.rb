# encoding: utf-8
require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Weapon.destroy_all
User.destroy_all

# 6.times do
#   Weapon.create(name: "Self defense rifle", category: "Assault riffle", description:"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", address: "Paris", price: "120")
# end


# a = User.create(name: "Priscilla", description: "I love big guns", picture: File.open(Rails.root.join('db/seed/user_2.jpg')))
# #a.picture.store File.open(Rails.root.join('db/seed/user_2.jpg'))
# b = Weapon.new(name: "Self defense rifle", category: Weapon::CATEGORIES.sample, picture: File.open(Rails.root.join('db/seed/weapon_1.jpg')), description: Faker::Lorem.paragraph(4..6), address: Faker::Address.street_address + ' ' + Faker::Address.zip_code + ' ' + Faker::Address.city, price: rand(200..5000))
# b.user = a
# b.save

a = User.create(name: "Priscilla", description: "I love big guns", email: "Priscilla@gmail.com", password: "ioueroui", picture: File.open(Rails.root.join('db/seed/user_2.jpg')))
b = Weapon.new(name: "Self defense rifle", category: "Assault riffle", picture: File.open(Rails.root.join('db/seed/weapon_2.jpg')), description: Faker::Lorem.paragraph(2), address: "Boston", price: rand(50..1000))
b.user = a
b.save

c = User.create(name: "Grandma Nova", description: "Once upon a time...", email: "Grandma@gmail.com", password: "ioueroui", picture: File.open(Rails.root.join('db/seed/user_3.jpg')))
d = Weapon.new(name: "WWII rifle", category: "Assault riffle", picture: File.open(Rails.root.join('db/seed/weapon_3.jpg')), description: Faker::Lorem.paragraph(2), address: "Dallas", price: rand(50..1000))
d.user = c
d.save

e = User.create(name: "Ryan", description: "Once upon a time...", email: "Ryan@gmail.com", password: "ioueroui", picture: File.open(Rails.root.join('db/seed/user_4.jpg')))
f = Weapon.new(name: "Military tank", category: "Heavy weapon", picture: File.open(Rails.root.join('db/seed/weapon_4.jpg')), description: Faker::Lorem.paragraph(2), address: "Miami", price: rand(50..1000))
f.user = e
f.save

g = User.create(name: "Donald", description: "NRA supporter", email: "Donald@gmail.com", password: "ioueroui", picture: File.open(Rails.root.join('db/seed/user_6.jpg')))
h = Weapon.new(name: "Feel my gun power", category: "Assault riffle", picture: File.open(Rails.root.join('db/seed/weapon_6.jpg')), description: Faker::Lorem.paragraph(2), address: "New York City", price: rand(50..1000))
h.user = g
h.save

i = User.create(name: "Rebecca", description: "Always armed", email: "Rebecca@gmail.com", password: "ioueroui", picture: File.open(Rails.root.join('db/seed/user_8.jpg')))
j = Weapon.new(name: "My secret passion", category: "Assault riffle", picture: File.open(Rails.root.join('db/seed/weapon_8.jpg')), description: Faker::Lorem.paragraph(2), address: "Los Angeles", price: rand(50..1000))
j.user = i
j.save

k = User.create(name: "Zorg", description: "Fith element", email: "Zorg@gmail.com", password: "ioueroui", picture: File.open(Rails.root.join('db/seed/user_7.jpg')))
l = Weapon.new(name: "Secret weapon", category: "Heavy weapon", picture: File.open(Rails.root.join('db/seed/weapon_7.jpg')), description: Faker::Lorem.paragraph(2), address: "Atlanta", price: rand(50..1000))
l.user = k
l.save
