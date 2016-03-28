class Review < ActiveRecord::Base
  belongs_to :critic
  belongs_to :event
end
