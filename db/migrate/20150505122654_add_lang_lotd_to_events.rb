class AddLangLotdToEvents < ActiveRecord::Migration
  def change
  	add_column :seven_event_events, :longitude, :string
  	add_column :seven_event_events, :latitude, :string
  end
end
