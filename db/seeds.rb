# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

22.times do |index|

	users = User.create!(pseudo: Faker::Name.name)

end

112.times do |index|

	links = Link.create!(title: Faker::Dessert.flavor, lien: Faker::WorldCup.city, user_id: "#{rand(1..22)}")

end

80.times do |index|

	comments = Comment.create!(content: Faker::DrWho.quote, link_id: "#{rand(1..112)}", user_id: "#{rand(1..22)}")

end

36.times do |index|

	under_comments = UnderComment.create!(content: Faker::DrWho.quote, user_id: "#{rand(1..22)}", comment_id: "#{rand(1..80)}")
end