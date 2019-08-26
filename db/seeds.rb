# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'

# Piece.create(name:"pulsation", description:"Musée d'art de Tokyo", dimensions:"50 x 50 x 50 cm", year:1975, category:"Kinetics")

puts "start spreading the news"

Piece.destroy_all
# User.destroy_all

# User.create(email:"rvilder@gmail.com", password:"rogeroger")


csv_text = File.read(Rails.root.join('lib', 'seeds', 'toutes_les_pieces_de_ta_vie.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Piece.new
  t.name = row['name']
  t.description = row['description']
  t.dimensions = row['dimensions']
  t.year = row['year']
  t.image = row['image']
  t.category = row['category']
  t.collection = row['collection']
  t.photo = row['photo']
  t.save
  puts "#{t.name}, #{t.dimensions} saved"
end

puts "Now, there are #{Piece.count} saved via seed in Database"

puts "New york, neeeeew yooooooork"
