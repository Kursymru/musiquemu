# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'jkursy@gmail.com', password: 'password', password_confirmation: 'password') if Rails.env.development?

Artist.create(name:'Jason Heerah')
Artist.create(name:'Laura Beg')
Artist.create(name:'Hans Nayna')
Author.create(name:'Kursy Julien')

EventCategory.create(name:'VIP')
EventCategory.create(name:'VVIP')

Category.create(name:'Musique du monde')
Category.create(name:'WebTV')
Category.create(name:'Vidéo Clip')
Category.create(name:'Interview')
Category.create(name:'Dernier Album')
