class ReviewsController < ApplicationController

  #ajax handler to make a review
  def invite_handler
    (action,event_id,critic_id) = params[:data].split(',')
    if (action == "i")
      review = Review.new({event_id: event_id, critic_id: critic_id, content: "", ratings: ""})
      if review.save
        render json: {action:"i", event_id: event_id, critic_id: critic_id}
      else
        render json: "error"
      end
    elsif (action == "u")
      review = Review.find_by(event_id: event_id, critic_id: critic_id)
      if review.destroy
        render json: {action:"u", event_id: event_id, critic_id: critic_id}
      else
        render json: "error"
      end
    end
  end

  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  ## This creates a blank review ( = invite )
  def create
      #send form with list of members
    @event = Event.find(params[:event_id])
    @critics = Critic.all
    if @event.creator_id != session[:user_id]
      render 'reviews/access_denied'
    else
      render 'reviews/_invite'
    end
  end


  def edit
    @labels = ["Rubric 1","Rubric 2","Rubric 3","Rubric 4","Rubric 5","Rubric 6","Rubric 7","Rubric 8","Rubric 9"]
    @review = Review.find(params[:id])
  end

#   def create

# ### if date > publish_date, render toolate

#     rubrics_string = rubrics_to_string(params[:review])

#     @review = Review.new({content: params[:review][:content], ratings: rubrics_string})
#     @review.critic = session[:user_id]
#     if @review.save
#       redirect_to @review
#     else
#       render "review/new"
#     end
#   end

  def update
    rubrics_string = rubrics_to_string(params[:review])
    @review = Review.find(params[:id])
      @review.update_attributes({content: params[:review][:content], ratings: rubrics_string})
    if @review.save
      redirect_to @review.event
    else
      render "review/edit"
    end
  end

  def destroy
  end

  private

  def rubrics_to_string(input)
    string = ""
    9.times do |i|
      puts "\n\n\n\n\n\n#{input}\n\n\n\n\n\n"
      string += input["rubric" + (i+1).to_s] + ","
    end
    return string
  end



end






