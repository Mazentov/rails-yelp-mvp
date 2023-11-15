# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
restaurants = [
  {
    name: "Chez momo",
    address: "2 rue de la dogue",
    category: "chinese",
    phone_number: "0674743838"
  },
  {
    name: "napolitano",
    address: "5 blv rossini",
    category: "italian",
    phone_number: "0638383131"
  },
  {
    name: "nihao",
    address: "2 rue yuri",
    category: "japanese",
    phone_number: "0631323265"
  },
  {
    name: "paul",
    address: "4 bdv de la dogue",
    category: "french",
    phone_number: "0641424545"
  },
  {
    name: "great",
    address: "5 rue marechal",
    category: "belgian",
    phone_number: "0652545453"
  }
]
restaurants.each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
end
