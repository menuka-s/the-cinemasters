class Movie < ActiveRecord::Base
  has_many :events
  has_many :critics, through: :events
end
