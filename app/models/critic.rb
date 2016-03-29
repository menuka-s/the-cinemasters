class Critic < ActiveRecord::Base
	validates :profile_image, presence: true

  has_many :created_events, class_name: "Event", foreign_key: :creator_id
  has_many :reviews
  has_many :joined_events, through: :reviews, source: :event
  has_many :reviewed_movies, through: :reviews, source: :movie
  has_many :invitations

  has_secure_password
  has_attached_file :profile_image, styles: { :thumb => "100x100", :medium => "640x640", :large => "960x960" }
	validates_attachment_content_type :profile_image, :content_type => /\Aimage\/.*\Z/
end
