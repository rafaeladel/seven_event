class AddGalleryToEvent < ActiveRecord::Migration
  def change
    add_reference :seven_gallery_galleries, :seven_event_event, index: true
    add_foreign_key :seven_gallery_galleries, :seven_event_events, on_delete: :cascade
  end
end