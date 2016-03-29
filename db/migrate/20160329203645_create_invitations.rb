class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :code
      t.references :critic, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
