class Review < ActiveRecord::Base
  belongs_to :critic
  belongs_to :event
  has_one :movie, through: :event

  def formatted_review
    this.content
  end
end
