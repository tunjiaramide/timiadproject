class AddAttachmentImageToInvites < ActiveRecord::Migration
  def self.up
    change_table :invites do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :invites, :image
  end
end
