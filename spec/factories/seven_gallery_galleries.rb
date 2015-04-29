FactoryGirl.define do
  factory :gallery, class: 'SevenGallery::Gallery' do
    title "an event gallery"
    
    factory :gallery_with_photos do 
	    after(:build) do |gallery| 
	    	gallery.photos << FactoryGirl.create(:photo_one, seven_gallery_gallery_id: gallery)
	    	gallery.photos << FactoryGirl.create(:photo_two, seven_gallery_gallery_id: gallery)
	    	gallery.photos << FactoryGirl.create(:photo_three, seven_gallery_gallery_id: gallery)
	    end
    end

  end
end