# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts "Destroying"
Student.destroy_all
puts "Starting Creation"
s1 = Student.create(first_name:"Bob",last_name:"Marley")
s2 = Student.create(first_name:"Rob",last_name:"Marley")
s3 = Student.create(first_name:"Cob",last_name:"Marley")
s4 = Student.create(first_name:"Sob",last_name:"Marley")
s5 = Student.create(first_name:"Mob",last_name:"Marley")
s6 = Student.create(first_name:"Pob",last_name:"Marley")
s7 = Student.create(first_name:"Fob",last_name:"Marley")
puts "Finished Creation"

