module ReviewsHelper

  # def has_reviewed_event(event)
  #   review = Review.find_by(event_id: event.id, critic_id: session[:user_id])
  #   if review && review.content != ""
  #     return true
  #   end
  #   false
  # end

  def review_has_data(review)
    review = Review.find(review.id)
    if review && ( review.content != "" || review.ratings != "")
      return true
    end
    false
  end

  def is_editable?(review)
    return true if review.event.pub_date > Date.today
    return false
  end

  def is_invited?(critic, event)
    critic.joined_events.include?(event)
  end

end
