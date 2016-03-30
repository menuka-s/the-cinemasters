require 'rails_helper'

RSpec.describe CriticsController, :type => :routing do
  describe "routing" do

    # it "routes to #new" do
    #   expect(:get => "/critics/new").to route_to("critics#new")
    # end

    it "routes to #show" do
      expect(:get => "/critics/1").to route_to("critics#show", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/critics").to route_to("critics#create")
    end

    it "routes to #edit" do
      expect(:get => "/critics/1/edit").to route_to("critics#edit", :id => "1" )
    end

    it "routes to #destroy" do
      expect(:delete => "/critics/1").to route_to("critics#destroy", :id => "1")
    end

  end
end