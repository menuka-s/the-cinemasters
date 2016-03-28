class Critic < ActiveRecord::Base
  has_many :events
  has_many :reviews

  has_secure_password

end
