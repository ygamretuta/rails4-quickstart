# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

u1 = User.create({email:'user1@example.com', password:'12345678', password_confirmation:'12345678'})
u2 = User.create({email:'user2@example.com', password:'12345678', password_confirmation:'12345678'})
b1 = Book.new({title:'Harry Potter', price:34.99})
b1.buyer = u1
b1.seller = u2
b1.save!
b2 = Book.new({title:'The Road', price:5.99})
b2.buyer = u2
b2.seller = u1
b2.save!