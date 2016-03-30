class Movie < ActiveRecord::Base
  validates :movie_image, presence: true
  validates :name, :imdb_url, presence: true

  has_many :events
  has_many :critics, through: :events

  has_attached_file :movie_image, :styles => { :small => "250x250#", :large => "500x500>" }
  validates_attachment_content_type :movie_image, :content_type => /\Aimage\/.*\Z/


end
