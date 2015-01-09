# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Comment.destroy_all

User.create(name: 'Emily', email: 'emily@emily.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Mo', email: 'mo@email.com', password: 'password', password_confirmation: 'password')
User.create(name: 'Danny', email: 'danny@email.com', password: 'password', password_confirmation: 'password')
User.create(name: 'James', email: 'james@email.com', password: 'password', password_confirmation: 'password')


Joke.create(user_id: 1, body: 'this joke is dumb')
Joke.create(user_id: 2, body: 'testing joke')
Joke.create(user_id: 3, body: 'is this thing working')
Joke.create(user_id: 4, body: 'this joke is dumb')
Joke.create(user_id: 1, body: 'knock knock')
Joke.create(user_id: 2, body: 'why did the chicken cross the road')
Joke.create(user_id: 3, body: 'whats black and white and read all over')
Joke.create(user_id: 4, body: 'can i get some change please?')
Joke.create(user_id: 1, body: 'But Sean!')

Comment.create(joke_id: 1, user_id: 3, body: "i don't know, THIS joke is dumb")
Comment.create(joke_id: 1, user_id: 3, body: "Hahaha. Ha.")
Comment.create(joke_id: 2, user_id: 1, body: "LOLZ")
Comment.create(joke_id: 3, user_id: 2, body: "ROTFL")
Comment.create(joke_id: 4, user_id: 4, body: "Bwahahaha")
Comment.create(joke_id: 1, user_id: 1, body: "OMG that was like so funny")
Comment.create(joke_id: 2, user_id: 2, body: "You are not funny.  Please stop.")
Comment.create(joke_id: 3, user_id: 3, body: "Someone is clearly running thin on material.")
Comment.create(joke_id: 2, user_id: 4, body: "Meh.")

puts 'yay'