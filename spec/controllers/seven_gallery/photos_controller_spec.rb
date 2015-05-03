require 'rails_helper'

module SevenGallery
  RSpec.describe PhotosController, type: :controller do
    routes { SevenEvent::Engine.routes }

    describe "PUT #make_main" do
      it "changes is_main to true in self and false in rest" do
        photo_one = FactoryGirl.create(:photo_one)
        photo_two = FactoryGirl.create(:photo_two)
        photo_three = FactoryGirl.create(:photo_three)

        expect(photo_one.gallery).to be_a Gallery

        expect(photo_one).to be_a Photo
        expect(photo_two).to be_a Photo
        expect(photo_three).to be_a Photo

        put :make_main, { gallery_id: photo_one.gallery.id, id: photo_one.id }

        photo_one.reload
        photo_two.reload
        photo_three.reload

        expect(photo_one.is_main?).to eq true
        expect(photo_two.is_main?).to eq false
        expect(photo_three.is_main?).to eq false

        put :make_main, { gallery_id: photo_two.gallery.id, id: photo_two.id }

        photo_one.reload
        photo_two.reload
        photo_three.reload

        expect(photo_one.is_main?).to eq false
        expect(photo_two.is_main?).to eq true
        expect(photo_three.is_main?).to eq false

      end
    end
  end
end