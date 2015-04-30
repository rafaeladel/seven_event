class SevenGallery::Photo < ActiveRecord::Base
  include SevenGallery::Concerns::Photo
  self.table_name = "photos"
  
end