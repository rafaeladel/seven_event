require 'rails_helper'

module SevenGallery
  RSpec.describe PhotosController, type: :routing do
    routes { SevenEvent::Engine.routes }

    describe "routing" do
      it "routes to #make_main" do
        expect(put: "/2/photos/make_main/1").to route_to(
            controller: "seven_gallery/photos",
            action: "make_main",
            gallery_id: "2",
            id: "1"
        )
      end
    end
  end
end