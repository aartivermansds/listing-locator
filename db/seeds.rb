# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

amenities = Amenity.create([{name: "Alarm system"},{name: "dLaundry room in building"},{name: "Elevator"}, {name: "Depanneur in building"},{name: "Door attendant"},{name: "Wheelchair accessible"},{name: "Onsite management"},{name: "Street parking"},{name: "Heating"},{name: " Janitor"},{name: " Intercom"},{name: "Hot water"},{name: "Security cameras"},{name: "Attached garage"},{name: "Electricity"}])
listing_categories = ListingCategory.create([{name: "Restaurant & Cafe"},{name: "Hotels"},{name: "Beauty & Spa"},{name: "Automotive"},{name: "Hospitals & Clinics"},{name: "Theater & Cinema"},{name: "Malls & Shopping complexes"}])
place_categories = PlaceCategory.create([{name: "Historical"},{name: "Nature"},{name: "Picnics"},{name: "Religious"},{name: "Museum"},{name: "Adventures"}])
places = Place.create([
  {name: "Red Fort",latitude: 28.656473,longitude: 77.242943},
  {name: "Chittorgarh",latitude: 24.8887435,longitude: 74.62692160000006},
  {name: "Taj Mahal",latitude: 27.173891,longitude: 78.042068},
  {name: "Statue of Liberty",latitude: 40.689247,longitude: -74.044502},
  {name: "Lal Bagh Palace",latitude: 22.7,longitude: 75.847},
  {name: "Chokhi Dhani",latitude: 22.7196,longitude: 75.8577},
  {name: "Rani Mahal",latitude: 12.8288 ,longitude: 79.707},
  {name: "Rajwada",latitude: ‎22.718435, longitude: 75.855217   }
])
