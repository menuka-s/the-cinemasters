# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create(name: "Spotlight", imdb_url: "http://www.imdb.com/title/tt1895587/", img_url: "http://thetipsyverse.com/wp-content/uploads/2015/11/Spotlight-Movie-Review-1.jpg", movie_image: File.new("#{Rails.root}/public/spotlight.jpg"))

Movie.create(name: "Birdman or (The Unexpected Virtue of Ignorance)", imdb_url: "http://www.imdb.com/title/tt2562232/", img_url: "http://www.wired.com/wp-content/uploads/2014/10/Birdman.jpg",movie_image: File.new("#{Rails.root}/public/birdman.jpg"))

Movie.create(name: "12 Years a Slave", imdb_url: "http://www.imdb.com/title/tt2024544/", img_url: "http://ia.media-imdb.com/images/M/MV5BMjExMTEzODkyN15BMl5BanBnXkFtZTcwNTU4NTc4OQ@@._V1_SX640_SY720_.jpg",movie_image: File.new("#{Rails.root}/public/12yearsaslave.jpg"))

Movie.create(name: "Argo", imdb_url: "http://www.imdb.com/title/tt1024648/", img_url: "http://www.revelationsradionews.com/wp-content/uploads/2013/02/01_argo_ipad.jpg",movie_image: File.new("#{Rails.root}/public/argo.jpg"))

Movie.create(name: "The Artist", imdb_url: "http://www.imdb.com/title/tt1655442/", img_url: "https://generationfilm.files.wordpress.com/2011/11/artist_primary.jpg",movie_image: File.new("#{Rails.root}/public/theartist.jpg"))

Critic.create(username: "Garfield Pincenez", password: "password", email: "radical_saint@yahoo.net", profile_image: File.new("#{Rails.root}/public/profile.jpeg"))

Critic.create(username: "Charles Fournier", password: "password", email: "turkishdelight44@comcast.net", profile_image: File.new("#{Rails.root}/public/profile.jpeg"))

Critic.create(username: "Kerry Collins", password: "password", email: "awalkonthewordside@aol.com", profile_image: File.new("#{Rails.root}/public/profile.jpeg"))

Critic.create(username: "Arthur Mastersonsen", password: "password", email: "squidwordwasright@boosh.org", profile_image: File.new("#{Rails.root}/public/profile.jpeg"))

Critic.create(username: "Camel Cayce", password: "password", email: "donttellmomthebabysittersisdead@gmail.com", profile_image: File.new("#{Rails.root}/public/profile.jpeg"))

Event.create(pub_date: Date.today, name: "Everyone but Camel.", creator: Critic.find(1), movie: Movie.find(1))

Event.create(pub_date: Date.today, name: "No critic left behind", creator: Critic.find(2), movie: Movie.find(2))

Event.create(pub_date: Date.today, name: "Another bummer movie", creator: Critic.find(3), movie: Movie.find(3))

Event.create(pub_date: Date.today, name: "Ben Affleck, Director?", creator: Critic.find(4), movie: Movie.find(4))

Event.create(pub_date: Date.today, name: "Black and white is back!", creator: Critic.find(5), movie: Movie.find(5))

Review.create(critic: Critic.find(1), event: Event.find(1), content: Faker::Lorem.paragraph(3), ratings: "5,5,4,3,5,42")

Review.create(critic: Critic.find(2), event: Event.find(1), content: Faker::Lorem.paragraph(3), ratings: "5,4,3,5,7,42")

Review.create(critic: Critic.find(3), event: Event.find(1), content: Faker::Lorem.paragraph(3), ratings: "2,2,5,5,4,42")

Review.create(critic: Critic.find(4), event: Event.find(1), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(1), event: Event.find(2), content: Faker::Lorem.paragraph(3), ratings: "5,5,4,3,5,42")

Review.create(critic: Critic.find(2), event: Event.find(2), content: Faker::Lorem.paragraph(3), ratings: "5,4,3,5,7,42")

Review.create(critic: Critic.find(3), event: Event.find(2), content: Faker::Lorem.paragraph(3), ratings: "2,2,5,5,4,42")

Review.create(critic: Critic.find(4), event: Event.find(2), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(5), event: Event.find(2), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(1), event: Event.find(3), content: Faker::Lorem.paragraph(3), ratings: "5,5,4,3,5,42")

Review.create(critic: Critic.find(2), event: Event.find(3), content: Faker::Lorem.paragraph(3), ratings: "5,4,3,5,7,42")

Review.create(critic: Critic.find(3), event: Event.find(3), content: Faker::Lorem.paragraph(3), ratings: "2,2,5,5,4,42")

Review.create(critic: Critic.find(4), event: Event.find(3), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(5), event: Event.find(3), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(1), event: Event.find(4), content: Faker::Lorem.paragraph(3), ratings: "5,5,4,3,5,42")

Review.create(critic: Critic.find(2), event: Event.find(4), content: Faker::Lorem.paragraph(3), ratings: "5,4,3,5,7,42")

Review.create(critic: Critic.find(3), event: Event.find(4), content: Faker::Lorem.paragraph(3), ratings: "2,2,5,5,4,42")

Review.create(critic: Critic.find(4), event: Event.find(4), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(5), event: Event.find(4), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(1), event: Event.find(5), content: Faker::Lorem.paragraph(3), ratings: "5,5,4,3,5,42")

Review.create(critic: Critic.find(2), event: Event.find(5), content: Faker::Lorem.paragraph(3), ratings: "5,4,3,5,7,42")

Review.create(critic: Critic.find(3), event: Event.find(5), content: Faker::Lorem.paragraph(3), ratings: "2,2,5,5,4,42")

Review.create(critic: Critic.find(4), event: Event.find(5), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Review.create(critic: Critic.find(5), event: Event.find(5), content: Faker::Lorem.paragraph(3), ratings: "3,3,4,5,5,42")

Critic.create(username: "iank", email: "ian@ian.com", password: "password", profile_image: File.new("#{Rails.root}/public/profile.jpeg"))
Review.create(event_id: 1, critic_id: 6, ratings: "", content: "")
