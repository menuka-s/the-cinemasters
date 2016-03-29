class CriticsController < ApplicationController

  # def index
  # end

  def show
    @critic = Critic.find(params[:id])
  end

  # def new
  #   @critic = Critic.new
  # end

  def edit
  end

  def create
    @critic = Critic.new(critic_params)
    if @critic.save
      session[:user_id] = @critic.id
      redirect_to @critic
    else
      render "critic/new"
    end
  end

  def update
  end

  def destroy
  end

  private
    def critic_params
      params.require(:critic).permit(:email, :password, :password_confirmation, :username, :profile_image) #add poster back here later
    end

end
