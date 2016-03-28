class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :pub_date
      t.references :creator, index: true, foreign_key: true
      t.references :movie, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
