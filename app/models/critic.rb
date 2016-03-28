class Critic < ActiveRecord::Base
  has_many :events
  has_many :reviews
  has_many :reviewed_movies, through: :reviews, source: :movie

  has_secure_password

end
