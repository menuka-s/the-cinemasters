class Review < ActiveRecord::Base
  belongs_to :critic
  belongs_to :event
  has_one :movie, through: :event
end
