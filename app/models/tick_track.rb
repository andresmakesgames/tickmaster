class TickTrack < ActiveRecord::Base
  attr_accessible :isPC, :name, :tick, :wound, :campaign_id, :bulkCount
  belongs_to :campaign
end
