# This migration comes from seven_gallery (originally 20150331182439)
class AddPositionToSevenGalleriesPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :position, :integer
  end
end
