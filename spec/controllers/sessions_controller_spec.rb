require 'rails_helper'

describe SessionsController do 
	let(:critic) { Critic.new(username: "Mike Busch", password: "password", email: "radical_saint@yahoo.net", profile_image: File.new("#{Rails.root}/public/mike.jpg")) }

	# describe "GET #index" do
	# 	it "renders the index page" do
	# 		get :index
	# 		expect(response).to render_template(:index)
	# 	end
	# end

	describe "GET #new" do
		it "assigns @critic" do
			get :new
			expect(assigns(:critic)).to be_a(Critic)
		end
	end

	describe "POST #create" do
		context "when valid params are passed" do
			# let(:critic_valid) { Critic.new(username: "Casey Cumbow", password: "password", email: "awalkonthewordside@aol.com", profile_image: File.new("#{Rails.root}/public/casey.jpg")) }

			it "assigns @critic" do
				expect{ post :create, email: "awalkonthewordside@aol.com", password: "password" }.to change{ Critic.all.length }.by(1)
			end

			it "sets the session[:user_id] to @critic.id" do
				post :create, email: "awalkonthewordside@aol.com", password: "password"
				allow(Critic).to receive(:authenticate).and_return @critic
				expect(session[:user_id]).to eq(@critic.id)
			end

			it "redirects to the @critic page" do
				expect{ post :create, critic_valid }.to redirect_to '/'
			end
		end

		context "when invalid params are passed" do 
			let(:critic_invalid) { Critic.new(username: "Casey Cumbow", email: "x", profile_image: File.new("#{Rails.root}/public/casey.jpg")) }

			it "redirects to the homepage" do

			end

			it "adds an error" do

			end
		end

	end

end









# describe 'Post#create' do 
# 	critic = Critic.new(username: "Camel Cayce", password: "password", email: "donttellmomthebabysittersisdead@gmail.com")

# 	context 'when password is invalid' do
# 		it 'redirects to the homepage with errors' do
# 			post :create, session: { email: critic.email, password: 'invalid' }

# 			expect(reponse).to redirect_to("/")
# 			expect(Critic.new.errors_on(:password)).to include("Incorrect Username/password")
# 		end
# 	end

# 	context 'when password is valid' do 

# 		it 'logs the critic in' do 
# 			post :create, session: { email: critic.email, password: critic.password }
# 			expect(session[:id]).to eq(critic.id)
# 		end

# 		it "redirects to the critic's page" do
# 			post :create, session: { email: critic.email, password: critic.password }
# 			expect(response).to redirect_to("/critics/#{critic.id}")
# 		end
# 	end

# end