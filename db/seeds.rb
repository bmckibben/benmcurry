# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

draws = [["Jan 21, 2023",5,14,19,46,64,22],
["Oct 26, 2022",19,36,37,46,56,24],
["Oct 24, 2022",18,23,35,45,54,16]]

# draws.each do |date,b1,b2,b3,b4,b5,powerball|
#   Draw.create(draw_date: date, b1: b1, b2: b2, b3: b3, b4: b4, b5: b5, powerball: powerball)
# end


User.create!(email: 'ben@mckibben.email', password: 'Satori69', password_confirmation: 'Satori69') if Rails.env.development?

# wikis = [
# ["A", 1, "A", nil, "1", "1", ]
# ]

# wikis.each do |title,user_id,body,parent,version,integer,deleted,default_sort,last_revision|

# end

