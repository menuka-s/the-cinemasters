module ReviewsHelper

  def has_reviewed_event(event)
    review = Review.find_by(event_id: event.id, critic_id: session[:user_id])
    if review && review.content != ""
      return true
    end
    false
  end

end
