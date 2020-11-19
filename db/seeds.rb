# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

EVENT_TYPES = ["Bridal", "Wedding", "Cocktail Party"]

user = User.new(
  email: "test@test.com",
  password: "ajkg;asdjg;"
  )

20.times do
  dress = Dress.create!(
    user: user,
    name: Faker::Name.first_name,
    price: Faker::Number.number(digits: 3),
    description: Faker::Quote.yoda,
    # photos: Faker::LoremFlickr.colorized_image(size: "50x60", search_terms: ["dress"]),
    currency: "GBP",
    event_type: EVENT_TYPES.sample
  )
end
