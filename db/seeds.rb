# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.delete_all

user1 = User.create(name: "Dario", age: 22, username: "ItsDario", email:"Dario@Dario.com", password: "abcd")
user2 = User.create(name: "Mario", age: 22, username: "ItsMario", email:"Mario@Mario.com", password: "1abcd")
user3 = User.create(name: "Fario", age: 22, username: "ItsFario", email:"Fario@Fario.com", password: "2abcd")
user4 = User.create(name: "Gario", age: 22, username: "ItsGario", email:"Gario@Gario.com", password: "3abcd")
user5 = User.create(name: "Tario", age: 22, username: "ItsTario", email:"Tario@Tario.com", password: "4abcd")


medium1 = Medium.create(title:"King Kong", genres: "Thriller", runtime:"232", release_year: "2019", rating: "3", rating_votes: "10")
medium2 = Medium.create(title:"Godzilla", genres: "Action", runtime:"123", release_year: "2003", rating: "2", rating_votes: "23")
medium3 = Medium.create(title:"Tut", genres: "Comedy", runtime:"234", release_year: "2010", rating: "3", rating_votes: "19")
medium4 = Medium.create(title:"Deadpool", genres: "Action", runtime:"150", release_year: "2017", rating: "5", rating_votes: "10")
medium5 = Medium.create(title:"Inception", genres: "Drama", runtime:"200", release_year: "2009", rating: "4", rating_votes: "22")
medium6 = Medium.create(title:"Shazam", genres: "SuperHero", runtime:"110", release_year: "2019", rating: "3", rating_votes: "10")