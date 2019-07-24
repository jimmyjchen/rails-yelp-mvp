
# puts "Attempting to create 20 restaurants..."

# 20.times do
#   Restaurant.create!(
#     name: Faker::Hipster.word.capitalize,
#     address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
#     phone_number: Faker::PhoneNumber.phone_number,
#     category: ["chinese", "italian", "japanese", "french", "belgian"].sample
#     )
# end

# puts "Successfully created #{Restaurant.count} restaurants."

puts "Attempting to create 100 reviews..."

100.times do
  Review.create!(
    content: Faker::Hipster.paragraph,
    rating: (1..5).to_a.sample,
    restaurant_id: (21..40).to_a.sample
    )
end

puts "Successfully created #{Review.count} reviews."
