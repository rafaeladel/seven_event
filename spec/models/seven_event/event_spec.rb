require 'rails_helper'

module SevenEvent
  RSpec.describe Event, type: :model do
    describe "testing event model" do
      it "should be valid" do
        expect(FactoryGirl.build_stubbed(:valid_event)).to be_valid
      end

      it "should not be valid" do
        expect(FactoryGirl.build_stubbed(:invalid_event)).not_to be_valid
      end

      it "has gallery and photos" do
        event = FactoryGirl.create(:valid_event)
        expect(event.gallery).to be_a SevenGallery::Gallery
        expect(event.gallery.photos.count).to eq 3
      end
    end
  end
end
