class AddAttachmentAvatarToFields < ActiveRecord::Migration
  def self.up
    change_table :fields do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :fields, :avatar
  end
end
