class AddAttachmentPicToDishes < ActiveRecord::Migration
  def self.up
    change_table :dishes do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :dishes, :pic
  end
end
