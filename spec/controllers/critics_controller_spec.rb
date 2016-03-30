require 'rails_helper'

describe CriticsController do

let!(:critic) { Critic.create(username: "Maurice Rabb", password: "password", email: "maurice@gmail.com", profile_image: File.new("#{Rails.root}/public/maurice.jpg")) }

  describe "GET #index" do
    it "assigns all critics as @critics" do
      get :index
      expect(assigns(:critics).length).to be(1)
    end
  end

  describe "GET #show" do
    it "assigns all critics as @critics" do
      get :show
      expect(assigns(:critics).length).to be(1)
    end
  end

end
