# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  first_name: "管理者",
  last_name: "権限",
  email: "test@test.com",
  password: "a22222",
  password_confirmation: "a22222",
  admin: true
)