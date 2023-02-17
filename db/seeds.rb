# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

draws = [["Jan 21, 2023",5,14,19,46,64,22],
["Jan 18, 2023",6,15,22,42,47,26],
["Jan 16, 2023",4,14,33,39,61,3],
["Jan 14, 2023",24,26,39,47,57,23],
["Jan 11, 2023",4,8,46,47,48,5],
["Jan 9, 2023",18,43,48,60,69,14],
["Jan 7, 2023",35,36,44,45,67,14],
["Jan 4, 2023",12,32,56,67,68,26],
["Jan 2, 2023",7,9,12,31,62,22],
["Dec 31, 2022",18,37,44,50,64,11],
["Dec 28, 2022",26,32,38,45,56,1],
["Dec 26, 2022",17,41,47,60,61,17],
["Dec 24, 2022",17,37,46,54,67,8],
["Dec 21, 2022",12,15,24,34,59,14],
["Dec 19, 2022",7,37,55,65,67,12],
["Dec 17, 2022",33,56,64,66,68,12],
["Dec 14, 2022",36,51,59,66,68,25],
["Dec 12, 2022",16,31,50,55,61,9],
["Dec 10, 2022",9,23,47,49,68,19],
["Dec 7, 2022",6,28,44,59,61,21],
["Dec 5, 2022",35,45,47,54,55,14],
["Dec 3, 2022",6,13,33,36,37,7],
["Nov 30, 2022",4,19,24,47,66,10],
["Nov 28, 2022",29,30,32,48,50,20],
["Nov 26, 2022",15,30,47,50,51,3],
["Nov 23, 2022",1,2,31,39,66,25],
["Nov 21, 2022",1,6,40,51,67,2],
["Nov 19, 2022",7,28,62,63,64,10],
["Nov 16, 2022",28,34,51,53,56,11],
["Nov 14, 2022",19,35,53,54,67,21],
["Nov 12, 2022",16,20,44,57,58,6],
["Nov 9, 2022",7,14,24,30,56,7],
["Nov 7, 2022",10,33,41,47,56,10],
["Nov 5, 2022",28,45,53,56,69,20],
["Nov 2, 2022",2,11,22,35,60,23],
["Oct 31, 2022",13,19,36,39,59,13],
["Oct 29, 2022",19,31,40,46,57,23],
["Oct 26, 2022",19,36,37,46,56,24],
["Oct 24, 2022",18,23,35,45,54,16]]

draws.each do |date,b1,b2,b3,b4,b5,powerball|
  Draw.create(draw_date: date, b1: b1, b2: b2, b3: b3, b4: b4, b5: b5, powerball: powerball)
end
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?