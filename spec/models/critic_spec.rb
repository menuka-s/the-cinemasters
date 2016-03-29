require 'rails_helper'

describe Critic do
  let(:critic) { Critic.new(username: "Camel Cayce", password: "password", email: "donttellmomthebabysittersisdead@gmail.com") }
  describe "it has a password" do
    it "should have a password" do
      expect(critic.password_digest).to_not be_nil
    end
  end
end
