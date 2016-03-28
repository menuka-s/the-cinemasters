class ReviewsController < ApplicationController

  def index
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new(event_id: params[:event_id])
  end

  def edit
  end

  def create

    rubrics_string = rubrics_to_string(params[:review])

    @review = Review.new({content: params[:review][:content], ratings: rubrics_string})
    @review.critic = session[:user_id]
    if @review.save
      session[:user_id] = @review.id
      redirect_to @review
    else
      render "review/new"
    end
  end

  def update
  end

  def destroy
  end

  private

  def rubrics_to_string(input)
    string = ""
    9.times do |i|
      string += input["rubric" + i.to_s] + ","
    end
    return string
  end



end






