
puts "Attempting to 20 restaurants..."

20.times do
  Restaurant.create!(
    name: Faker::Hipster.word.capitalize,
    address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
    phone_number: Faker::PhoneNumber.phone_number,
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
    )
end

puts "Successfully created #{Restaurant.count} restaurants."
