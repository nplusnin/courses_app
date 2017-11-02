# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: "admin@admin.ru",
            password: "qwe12345",
            password_confirmation: "qwe12345",
            admin: true)

1..3.times do |i|
  User.create(email: "user_#{i}@user.ru",
              password: "qwe12345",
              password_confirmation: "qwe12345")
end