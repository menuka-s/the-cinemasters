class Event < ActiveRecord::Base
  belongs_to :creator, class_name: "Critic"
  belongs_to :movie
  has_many :reviews
  has_many :critics, through: :reviews
end
