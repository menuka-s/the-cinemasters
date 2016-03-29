require 'rails_helper'

describe Movie do
  let(:movie) { Movie.new(name: "Synecdoche New York", imdb_url: "http://www.imdb.com/title/tt0383028/", img_url: "http://ecx.images-amazon.com/images/I/51BMf2zbrOL._SX940_.jpg") }

  context "name" do
    it "should have a name" do
      expect(movie.name).to_not be_nil
    end

    it "should have the correct name" do
      expect(movie.name).to eq "Synecdoche New York"
    end
  end

  context "imdb_url" do
    it "should have an imdb_url" do
      expect(movie.imdb_url).to_not be_nil
    end

    it "should have the correct imdb_url" do
      expect(movie.imdb_url).to eq "http://www.imdb.com/title/tt0383028/"
    end
  end

  context "img_url" do
    it "should have an img_url" do
      expect(movie.img_url).to_not be_nil
    end

    it "should have the correct img_url" do
      expect(movie.img_url).to eq "http://ecx.images-amazon.com/images/I/51BMf2zbrOL._SX940_.jpg"
    end
  end

end
