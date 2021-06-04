# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Animal.destroy_all

10.times do
  a = Animal.create!(
    name: Faker::Creature::Dog.unique.name,
    sex: %w[male female].sample,
    species: Animal.available_species.sample
  )
  puts "Created #{a.name}"

end
puts "Created #{Animal.count} animals"
