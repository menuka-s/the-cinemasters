class CreateCritics < ActiveRecord::Migration
  def change
    create_table :critics do |t|
      t.string :username
      t.text :password_digest
      t.string :email

      t.timestamps null: false
    end
  end
end
