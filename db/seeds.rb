# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Restaurant.destroy_all
Review.destroy_all

5.times {
  restaurnat = Restaurant.new(name: Faker::Name.name, address: Faker::Address.full_address, phone_number: Faker::PhoneNumber.cell_phone, category: ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample)
  restaurnat.save
  6.times {
    review = Review.new(content: Faker::Lorem.paragraph, rating: (0..5).to_a.sample, restaurant_id: restaurnat.id)
    review.save
  }
}
