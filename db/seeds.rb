# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
SchoolClass.destroy_all


Student.create(first_name: "Esther", last_name: "Kim")
Student.create(first_name: "James", last_name: "Kim")
Student.create(first_name: "Kevin", last_name: "Yoo")


SchoolClass.create(title: "Title 1", room_number: 1)
SchoolClass.create(title: "Title 2", room_number: 2)
SchoolClass.create(title: "Title 3", room_number: 3)
SchoolClass.create(title: "Title 4", room_number: 4)
