# This migration comes from seven_gallery (originally 20150331143028)
class AddAdditionalsToSevenGalleryPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :is_featured, :boolean, default: false
    add_column :photos, :description, :text
    add_column :photos, :alt, :string
  end
end
