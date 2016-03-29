require 'rails_helper'

describe 'Post#create' do 
	critic = Critic.new(username: "Camel Cayce", password: "password", email: "donttellmomthebabysittersisdead@gmail.com")

	context 'when password is invalid' do
		it 'redirects to the homepage with errors' do
			post :create, session: { email: critic.email, password: 'invalid' }

			expect(reponse).to redirect_to("/")
			expect(Critic.new.errors_on(:password)).to include("Incorrect Username/password")
		end
	end

	context 'when password is valid' do 

		it 'logs the critic in' do 
			post :create, session: { email: critic.email, password: critic.password }
			expect(session[:id]).to eq(critic.id)
		end

		it "redirects to the critic's page" do
			post :create, session: { email: critic.email, password: critic.password }
			expect(response).to redirect_to("/critics/#{critic.id}")
		end
	end

end