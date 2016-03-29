require 'rails_helper'

describe Review do
  let(:review) { Review.new(critic: Critic.find(1), event: Event.find(1), content: "This movie was superb! A perfect 5/7.", ratings: "5,5,4,3,5,7,5,2,2") }

  describe "critic" do
    it "should have a critic" do
      expect(review.critic).to_not be_nil
    end

    it "should have the correct critic" do
      expect(review.critic.id).to eq 1
    end
  end

  describe "event" do
    it "should have an event" do
      expect(review.event).to_not be_nil
    end

    it "should have the correct event" do
      expect(review.event.id).to eq 1
    end
  end

  describe "content" do
    it "should have content" do
      expect(review.content).to_not be_nil
    end

    it "should have the correct content" do
      expect(review.content).to eq "This movie was superb! A perfect 5/7."
    end
  end

  describe "ratings" do
    it "should have ratings" do
      expect(review.ratings).to_not be_nil
    end

    it "should have the correct ratings" do
      expect(review.ratings).to eq "5,5,4,3,5,7,5,2,2"
    end
  end

end
