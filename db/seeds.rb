# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Tool.delete_all

Tool.create(name: "Hammer", price: 234.43, quantity: 1)
Tool.create(name: "Saw", price: 567.56, quantity: 534)
Tool.create(name: "Pry", price: 0.11, quantity: 5)
Tool.create(name: "Atom", price: 546.65, quantity: 56)
Tool.create(name: "Screw", price: 23.00, quantity: 5465)

puts "Created '#{Tool.count}' number of Tools"
