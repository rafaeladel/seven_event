class SevenGallery::Photo < ActiveRecord::Base
	include SevenGallery::Concerns::Photo
	self.table_name = "seven_gallery_photos"
end
