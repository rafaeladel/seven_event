class SevenGallery::Gallery < ActiveRecord::Base
  include SevenGallery::Concerns::Gallery
  belongs_to :event, :class_name => 'SevenEvent::Event'
end