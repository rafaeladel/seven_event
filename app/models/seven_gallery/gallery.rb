class SevenGallery::Gallery < ActiveRecord::Base
  include SevenGallery::Concerns::Gallery
  self.table_name = "galleries"

  belongs_to :event, :class_name => 'SevenEvent::Event'
  has_many :photos, :class_name => 'SevenGallery::Photo'

end