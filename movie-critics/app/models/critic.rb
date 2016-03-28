class Critic < ActiveRecord::Base

  has_many :created_events, class_name: "Event", foreign_key: :creator_id
  has_many :reviews
  has_many :joined_events, through: :reviews, source: :event
  has_many :reviewed_movies, through: :reviews, source: :movie

  has_secure_password

end
