require 'rails_helper'

RSpec.describe Invitation, type: :model do
	let(:invitation) { Invitation.new(code: "Xsh29did0d3kd0", critic: Critic.new(id: 1)) }
  context "code" do
  	it "should exist" do
  		expect(invitation.code).to_not be_nil
  	end

  	it "should have the correct code" do
  		expect(invitation.code).to eq "Xsh29did0d3kd0"
  	end
  end

  context "critic" do
  	it "should exist" do
  		expect(invitation.critic).to_not be_nil
  	end

  	it "should have the correct critic" do
  		expect(invitation.critic.id).to eq 1 
  	end
  end
end
