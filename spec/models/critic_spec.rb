require 'rails_helper'

describe Critic do
  let(:critic) { Critic.new(username: "Camel Cayce", password: "password", email: "donttellmomthebabysittersisdead@gmail.com") }

  context "username" do
    it "should have a username" do
      expect(critic.username).to_not be_nil
    end

    it "should have the correct username" do
      expect(critic.username).to eq "Camel Cayce"
    end
  end

  context "password" do
    it "should have a password" do
      expect(critic.password).to_not be_nil
    end

    it "should have the correct password" do
      expect(critic.password).to eq "password"
    end
  end

  context "email" do
    it "should have an email" do
      expect(critic.email).to_not be_nil
    end


    it "should have the correct email" do
      expect(critic.email).to eq "donttellmomthebabysittersisdead@gmail.com"
    end
  end

end
