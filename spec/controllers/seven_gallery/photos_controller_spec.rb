require 'rails_helper'

module SevenGallery
  RSpec.describe PhotosController, type: :controller do

    describe "PUT #make_main" do
      it "changes is_main to true in self and false in rest" do
        photo_one = FactoryGirl.create(:photo_with_gallery)
        # p photo_one   
        expect(photo_one.gallery).to be_a SevenGallery::Gallery
      end
    end

  end
end