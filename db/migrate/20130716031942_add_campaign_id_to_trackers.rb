class AddCampaignIdToTrackers < ActiveRecord::Migration
  def change
  	add_column :tick_tracks, :campaign_id, :integer
  	add_index :tick_tracks, :campaign_id
  end
end
