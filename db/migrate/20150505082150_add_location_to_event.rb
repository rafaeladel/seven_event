class AddLocationToEvent < ActiveRecord::Migration
  def change
    add_column :seven_event_events, :location, :string
  end
end
