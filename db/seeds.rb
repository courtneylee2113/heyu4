# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Pin.create!(
  :title  => "Title 1",
  :description => "Description 1",
  :address    => "109 McCaul Street, Toronto Eaton Centre, Toronto, ON M5T 3K5", 
  :latitude => '43.65466', 
  :longitude => '-79.381034',
  :venue => 'McDonalds',
  :orientation => 'W4M'
)

Pin.create!(
  :title  => "Title 2",
  :description => "Description 2",
  :address    => "710 King Street West, Toronto, ON M5V 2Y6", 
  :latitude => '43.644042', 
  :longitude => '-79.403258',
  :venue => 'McDonalds',
  :orientation => 'W4M'
)

Pin.create!(
  :title  => "Title 3",
  :description => "Description 3",
  :address    => "160 Spadina Ave, Toronto, ON M5T 2C2", 
  :latitude => '43.648846', 
  :longitude => '-79.396706',
  :venue => 'McDonalds', 
  :orientation => 'W4M'
)


   