# This migration comes from seven_gallery (originally 20150329123256)
class CreateSevenGalleryPhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :caption
      t.string :image
      t.references :gallery, index: true

      t.timestamps null: false
    end
  end
end
