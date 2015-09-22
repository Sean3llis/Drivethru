# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'time'

foodTruck = Category.create(name: "Food Truck")
foodStand = Category.create(name: "Food Stand")

mofo = Vendor.create(name: "Mofongo")
	mofo.dishes.create(name: "Chicken Mofongo")
	mofo.dishes.create(name: "Pork Mofongo")
	mofo.category = foodTruck
	mofo.events.create(
		title: "Event 1",
		start: Time.now.utc.iso8601
		)
	mofo.events.create(
		title: "Event 2",
		start: 
		)
	mofo.events.create(
		title: "Event 3",
		start: 
		)

carnal = Vendor.create(name: "Carnal")
	carnal.dishes.create(name: "Ribs")
	carnal.dishes.create(name: "Pork Shoulder")
	carnal.dishes.create(name: "Sirloin")
	carnal.category = foodStand
llama = Vendor.create(name: "Bolivian Llama Party")
	llama.dishes.create(name: "Sandwich")
	llama.dishes.create(name: "Sliders")
	llama.dishes.create(name: "Brisket")
	llama.category = foodStand

