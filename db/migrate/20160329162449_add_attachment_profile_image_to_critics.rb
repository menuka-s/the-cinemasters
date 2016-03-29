class AddAttachmentProfileImageToCritics < ActiveRecord::Migration
  def self.up
    change_table :critics do |t|
      t.attachment :profile_image
    end
  end

  def self.down
    remove_attachment :critics, :profile_image
  end
end
