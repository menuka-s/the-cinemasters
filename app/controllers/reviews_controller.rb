class ReviewsController < ApplicationController

  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    ### This should just create a new review with movie_id and critic_id - no form needed
    ### content and rating should be set to "" **not nil!
    @labels = ["Rubric 1","Rubric 2","Rubric 3","Rubric 4","Rubric 5","Rubric 6","Rubric 7","Rubric 8","Rubric 9"]
    @review = Review.new(event_id: params[:event_id])
  end

  def edit
    @labels = ["Rubric 1","Rubric 2","Rubric 3","Rubric 4","Rubric 5","Rubric 6","Rubric 7","Rubric 8","Rubric 9"]
    @review = Review.find(params[:id])
  end

  def create

### if date > publish_date, render toolate

    rubrics_string = rubrics_to_string(params[:review])

    @review = Review.new({content: params[:review][:content], ratings: rubrics_string})
    @review.critic = session[:user_id]
    if @review.save
      redirect_to @review
    else
      render "review/new"
    end
  end

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






