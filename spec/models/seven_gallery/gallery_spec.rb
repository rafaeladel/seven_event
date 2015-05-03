require 'rails_helper'

module SevenGallery
  RSpec.describe Gallery, type: :model do
    it "returns event" do
      gallery = FactoryGirl.create(:gallery_with_event)
      expect(gallery.event).to be_a SevenEvent::Event
    end
  end
end