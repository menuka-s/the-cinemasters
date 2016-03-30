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

Critic.create(username: "Mike Busch", password: "password", email: "radical_saint@yahoo.net", profile_image: File.new("#{Rails.root}/public/mike.jpg"))

Critic.create(username: "Duke Green", password: "password", email: "turkishdelight44@comcast.net", profile_image: File.new("#{Rails.root}/public/duke.jpg"))

Critic.create(username: "Casey Cumbow", password: "password", email: "awalkonthewordside@aol.com", profile_image: File.new("#{Rails.root}/public/casey.jpg"))

Critic.create(username: "Alyssa Diaz", password: "password", email: "squidwordwasright@boosh.org", profile_image: File.new("#{Rails.root}/public/alyssa.jpg"))

Critic.create(username: "Matt Baker", password: "password", email: "donttellmomthebabysittersisdead@gmail.com", profile_image: File.new("#{Rails.root}/public/matt.jpg"))

Critic.create(username: "Maurice Rabb", password: "password", email: "maurice@gmail.com", profile_image: File.new("#{Rails.root}/public/maurice.jpg"))

Event.create(pub_date: Date.today, name: "Everyone but Baker.", creator: Critic.find(1), movie: Movie.find(1))

Event.create(pub_date: Date.today, name: "No critic left behind", creator: Critic.find(2), movie: Movie.find(2))

Event.create(pub_date: Date.today, name: "Another bummer movie", creator: Critic.find(3), movie: Movie.find(3))

Event.create(pub_date: Date.today, name: "Ben Affleck, Director?", creator: Critic.find(4), movie: Movie.find(4))

Event.create(pub_date: Date.today, name: "Black and white is back!", creator: Critic.find(5), movie: Movie.find(5))

Review.create(critic: Critic.find(1), event: Event.find(1), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(2), event: Event.find(1), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(3), event: Event.find(1), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(4), event: Event.find(1), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(1), event: Event.find(2), content: "In Birdman or (The Unexpected Virtue of Ignorance), Michael Keaton plays former blockbuster movie star Riggan Thomson – remembered best for portraying comic book hero Birdman on the big screen (back in the 1990s). Fast forward two decades and Thomson is no longer a hot Hollywood commodity. Broke, separated from his wife (Amy Ryan), estranged from his rebellious daughter (Emma Stone), and forgotten by his once adoring fans, Thomson sets out to prove that he’s not just a washed up hack – opting to write, direct, and star in a Broadway show based on the Raymond Carver story 'What We Talk About When We Talk About Love'.

However, when Thomson is unhappy with the actor cast as Nick in the production (Jeremy Shamos), he makes a last minute replacement – auditioning critically acclaimed stage performer Mike Shiner (Edward Norton) to take over the part. Impressed by Shiner’s sincerity (and method acting approach), Thomson hires the quirky thespian less than 24 hours prior to the first preview performance of What We Talk About When We Talk About Love. However, when Shiner makes a scene during his first public rehearsal, Thomson is thrown into a spiral of self-doubt and fear – second-guessing his own talent, personal relationships, career choices, and begging the question: will audiences even be willing to love him again?", ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(2), event: Event.find(2), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(3), event: Event.find(2), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(4), event: Event.find(2), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(5), event: Event.find(2), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(1), event: Event.find(3), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(2), event: Event.find(3), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(3), event: Event.find(3), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(4), event: Event.find(3), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(5), event: Event.find(3), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(1), event: Event.find(4), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(2), event: Event.find(4), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(3), event: Event.find(4), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(4), event: Event.find(4), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(5), event: Event.find(4), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(1), event: Event.find(5), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(2), event: Event.find(5), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(3), event: Event.find(5), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(4), event: Event.find(5), content: Faker::Lorem.paragraph(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Review.create(critic: Critic.find(5), event: Event.find(5), content: Faker::Lorem.paragraphs(3), ratings: "#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(1..10)},#{rand(30..50)}")

Critic.create(username: "iank", email: "ian@ian.com", password: "password", profile_image: File.new("#{Rails.root}/public/profile.jpg"))
Review.create(event_id: 1, critic_id: 7, ratings: "", content: "")
