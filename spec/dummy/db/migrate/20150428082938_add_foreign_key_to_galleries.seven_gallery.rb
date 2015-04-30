# This migration comes from seven_gallery (originally 20150408131836)
class AddForeignKeyToGalleries < ActiveRecord::Migration
  def change
    add_foreign_key :photos, :galleries, on_delete: :cascade
  end
end
