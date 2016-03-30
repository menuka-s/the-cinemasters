class AddDraftToReviews < ActiveRecord::Migration
  def change
  	add_column :reviews, :draft, :text
  end
end
