# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
category = ["chinese", "italian", "japanese", "french", "belgian"]

Restaurant.destroy_all

10.times do
    puts "Populating Restaurants..."
    Restaurant.create(
        name: Faker::Restaurant.name,
        address: Faker::Address.street_address,
        category: category.sample,
        phone_number: Faker::PhoneNumber.cell_phone
    )
    puts "Restaurant added"
end

restaurants = Restaurant.all

restaurants.each do |restaurant|
    puts "Adding reviews to each restaurant"
    10.times do
        Review.create(
            content: Faker::Quote.yoda,
            rating: [0..5].to_a.sample,
            restaurant_id: restaurant.id
        )
    end
    puts "reviews added"
end