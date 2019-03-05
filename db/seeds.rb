# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'
current_date = DateTime.now

category_list = [
  "Matematika",
  "Sejarah",
  "Bahasa Indonesia",
  "Bahasa Inggris",
  "Bahasa Jepang",
  "Agama",
  "Kimia",
  "Biologi"
]

category_list.each do |list|
  Category.create( name: list )
end

Homework.create( homework_name: 'Menjawab pertanyaan pada buku paket dari hal 1 - 5', category: category_list.first, deadline: current_date.strftime("%Y-%m-%d"), description: 'Tugas ini jawabannya ditulis di buku tulis')
