# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Company.create(name: "スパルタ商事", url:"http://sparutacamp.jp/",  address: "東京都千代田区１−１−１")
Company.create(name: "グーグル株式会社", url:"http://google.jp/", address: "東京都渋谷区１−１−１")
Company.create(name: "ヤフー株式会社", url:"http://yahoo.jp/",  address: "東京都港区１−１−１")

100.times do |index|
  Customer.create(
    family_name: Faker::Japanese::Name.last_name,
    given_name: Faker::Japanese::Name.first_name,
    email: "customer_#{index}@sparta.com",
    company_id: rand(3)+1
  )
end
