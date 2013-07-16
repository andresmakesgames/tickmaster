class CreateTickTracks < ActiveRecord::Migration
  def change
    create_table :tick_tracks do |t|
      t.string :name
      t.integer :tick
      t.integer :wound
      t.boolean :isPC

      t.timestamps
    end
  end
end
