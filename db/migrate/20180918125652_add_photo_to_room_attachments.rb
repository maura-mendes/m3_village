class AddPhotoToRoomAttachments < ActiveRecord::Migration[5.2]
  def change
    add_column :room_attachments, :photo, :string
  end
end
