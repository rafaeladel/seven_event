class AddGalleryToEvent < ActiveRecord::Migration
  def change
    add_reference :galleries, :event, index: true
    add_foreign_key :galleries, :events, on_delete: :cascade
  end
end