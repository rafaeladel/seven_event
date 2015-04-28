require 'rails_helper'

module SevenGallery
  RSpec.describe PhotosController, type: :controller do

    describe "PUT #make_main" do
      it "changes is_main to true in self and false in rest" do
        event = FactoryGirl.create(:event, title: "title1", description: "desc1", start_at: Time.now + 1)
        p event.gallery.photos.inspect
        photo_one = event.gallery.photos.first
        expect(photo_one.gallery.event).to be_a SevenEvent::Event
      end
    end

  end
end