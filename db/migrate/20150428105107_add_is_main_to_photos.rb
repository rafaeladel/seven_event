class AddIsMainToPhotos < ActiveRecord::Migration
  def change
    add_column :seven_gallery_photos, :is_main, :boolean, default: false
  end
end
