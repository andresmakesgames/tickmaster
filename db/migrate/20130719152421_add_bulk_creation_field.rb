class AddBulkCreationField < ActiveRecord::Migration
  def change
  	add_column :tick_tracks, :bulkCount, :integer
  end
end
