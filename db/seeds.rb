# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.create(email: "a@a.com", password: 123456)

3.times do
  User.create(email: Faker::Internet.email, password: 123456)
end

user = User.first

5.times do
  a = Video.create!(file: File.open("video.mp4"), user: user)
end

get = User.all

all = get[1..-1]

5.times do
  a = Video.create!(file: File.open("quantum-computer-qubit-technology_n1ri6_eje__PM.mp4"), user: all.sample)
end
