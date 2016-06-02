class CriticsController < ApplicationController

  def index
    @critics = Critic.all
  end

  def show
    @critic = Critic.find(params[:id])
  end

  # def new
  #   @critic = Critic.new
  # end

  def edit
  end

  def partial
    @critic = Critic.find(current_user.id)
    render "layouts/_usernav", layout: false
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
