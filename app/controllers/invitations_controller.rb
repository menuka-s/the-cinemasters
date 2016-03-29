class InvitationsController < ApplicationController

	def new
		if session[:user_id] != nil
			invitation = Invitation.new(critic_id: session[:user_id])
			invitation.save
			render json: {code: invitation.code }
		else
			500
		end
	end

	def delete
		invitation = Invitation.find_by(code: params[:id])
		invitation.destroy
		render json: {nil: nil}
	end

	def redeem
		invitation = Invitation.find_by(code: params[:id])
		if invitation != nil
			@critic = Critic.new
			render 'critics/new'
		else
			redirect_to '/'
		end
	end

end