class RemovePhotoFromRomms < ActiveRecord::Migration[5.2]
  def change
  	remove_column :rooms, :photo
  end
end
