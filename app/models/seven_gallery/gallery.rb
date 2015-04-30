class SevenGallery::Gallery < ActiveRecord::Base
  include SevenGallery::Concerns::Gallery

  self.table_name = "seven_gallery_galleries"

  belongs_to :event, :class_name => 'SevenEvent::Event'

end