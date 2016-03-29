require 'rails_helper'

describe Event do
  let(:event) { Event.new(pub_date: Date.today, name: "Synecdoche New York Viewing", creator: Critic.find(1), movie: Movie.find(1)) }

  context "name" do
    it "should have a name" do
      expect(event.name).to_not be_nil
    end

    it "should have the correct name" do
      expect(event.name).to eq "Synecdoche New York Viewing"
    end
  end

  context "pub_date" do
    it "should have a pub_date" do
      expect(event.pub_date).to_not be_nil
    end

    it "should have the correct pub_date" do
      expect(event.pub_date).to eq Date.today
    end
  end

  context "creator" do
    it "should have a creator" do
      expect(event.creator).to_not be_nil
    end

    it "should have the correct creator" do
      expect(event.creator.id).to eq 1
    end
  end

  context "movie" do
    it "should have a movie" do
      expect(event.movie).to_not be_nil
    end

    it "should have the correct movie" do
      expect(event.movie.id).to eq 1
    end
  end

end
