class CreateRoomAttachments < ActiveRecord::Migration[5.2]
  def change
    create_table :room_attachments do |t|
      t.references :room, foreign_key: true

      t.timestamps
    end
  end
end
