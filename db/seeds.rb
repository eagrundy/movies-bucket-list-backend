# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

drama = Category.create(name: "Drama")

comedy = Category.create(name: "Comedy")

mistery = Category.create(name: "Mistery")

fiction = Category.create(name: "Fiction")

thriller = Category.create(name: "Thriller")

action = Category.create(name: "Action")

romance = Category.create(name: "Romance")

Movie.create([
    {
        :title => "Avatar", 
        :image_url => "https://i.ytimg.com/vi/52c_ZH7ufJ8/maxresdefault.jpg",
        :description => "A hybrid human-alien called an Avatar is created to facilitate communication with the indigenous Na vis from the planet Pandora.",
        :deadline => DateTime.parse("06/01/2022 17:00"),
        :category_id => fiction.id
    },
    {
        :title => "Matrix", 
        :image_url => "https://fastly.syfy.com/sites/syfy/files/styles/1170xauto/public/the_matrix_0.png",
        :description => "When a beautiful stranger leads computer hacker Neo to a forbidding underworld, he discovers the shocking truth--the life he knows is the elaborate deception of an evil cyber-intelligence.",
        :deadline => DateTime.parse("09/01/2022 13:00"),
        :category_id => action.id
    }])
