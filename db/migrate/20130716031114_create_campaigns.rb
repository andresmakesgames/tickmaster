class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.string :GM
      t.boolean :active

      t.timestamps
    end
  end
end
