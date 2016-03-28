class Movie < ActiveRecord::Base
  has_many :events
end
