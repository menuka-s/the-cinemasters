class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :critic, index: true, foreign_key: true
      t.references :event, index: true, foreign_key: true
      t.string :content
      t.string :ratings

      t.timestamps null: false
    end
  end
end
