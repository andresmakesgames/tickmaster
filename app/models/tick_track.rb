class TickTrack < ActiveRecord::Base
  attr_accessible :isPC, :name, :tick, :wound, :campaign_id
  belongs_to :campaign
end
