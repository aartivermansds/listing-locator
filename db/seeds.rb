# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

amenities = Amenity.create([{name: "Alarm system"},{name: "dLaundry room in building"},{name: "Elevator"}, {name: "Depanneur in building"},{name: "Door attendant"},{name: "Wheelchair accessible"},{name: "Onsite management"},{name: "Street parking"},{name: "Heating"},{name: " Janitor"},{name: " Intercom"},{name: "Hot water"},{name: "Security cameras"},{name: "Attached garage"},{name: "Electricity"}])