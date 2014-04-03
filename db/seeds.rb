# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
	email:"boyshit@shit.com",
	firstname:"boy",
	lastname:"shit",
	password:"1234567
	",
	password_confirmation:"1234567",
	admin:true
)

User.create(
	email:"boywonder@shit.com",
	firstname:"boy",
	lastname:"wonder",
	password:"1234567",
	password_confirmation:"1234567",
	admin:false
)

User.create(
	email:"cheetah@shit.com",
	firstname:"boy",
	lastname:"wonder",
	password:"1234567",
	password_confirmation:"1234567",
	admin:false
)
