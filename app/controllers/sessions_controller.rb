class SessionsController < ApplicationController
  def new
    @critic= Critic.new
  end

  def create
    @critic = Critic.find_by_email(params[:email])
    if @critic && @critic.authenticate(params[:password])
      session[:user_id] = @critic.id
      redirect_to @critic
    else
      @errors = ["Incorrect Username/password"]
      redirect_to '/'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  def index
    render 'index'
  end

end
