class CreateRooms < ActiveRecord::Migration[5.0]
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :capacity
      t.text :schedule

      t.timestamps
    end
  end
end
