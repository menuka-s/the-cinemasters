require 'rails_helper'

RSpec.describe InvitationsController, :type => :routing do
	describe "routing" do

		it "routes to #new" do
			expect(:post => "/invitations/new").to route_to("invitations#new") 
		end

		it "routes to #redeem" do
			expect(:get => "/invitations/1").to route_to("invitations#redeem", :id => "1")
		end

		it "routes to #delete" do 
			expect(:delete => "/invitations/1").to route_to("invitations#delete", :id => "1")
		end
	end
end