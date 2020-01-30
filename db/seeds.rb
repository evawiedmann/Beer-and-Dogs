# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do |i|
  @brewery = Brewery.create(name: Faker::GreekPhilosophers.name, street: Faker::Address.street_address, city: 'Portland', state: 'OR', zip: Faker::Address.zip, dog_friendly: Faker::Coin.flip, outdoor: Faker::Games::Zelda.location, park_nearby: Faker::Coin.flip)
  5.times do
    @brewery.reviews.new(
      author: Faker::TvShows::DrWho.villain,
      content: Faker::Books::Lovecraft.sentence
    )
    @brewery.save
    puts "Created #{Review.count} and #{Brewery.count} Breweries."
  end
end
