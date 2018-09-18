class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :capacity
      t.integer :size
      t.integer :bed
      t.string :photo
      t.boolean :available

      t.timestamps
    end
  end
end
