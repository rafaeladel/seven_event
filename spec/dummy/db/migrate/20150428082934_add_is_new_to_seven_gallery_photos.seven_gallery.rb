# This migration comes from seven_gallery (originally 20150330150735)
class AddIsNewToSevenGalleryPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :is_new, :boolean, default: true
  end
end
