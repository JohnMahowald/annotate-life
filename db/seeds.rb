# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create(email: "john@me.com", password: "johnjohn")
User.create(email: "tim@me.com", password: "timtim")
User.create(email: "jared@me.com", password: "jaredjared")