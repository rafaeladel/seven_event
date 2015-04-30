FactoryGirl.define do
  factory :gallery, class: 'SevenGallery::Gallery' do
    title "an event gallery"
    
    factory :gallery_with_photos do 
	    after(:build) do |gallery| 
	    	gallery.photos << FactoryGirl.create(:photo_one, gallery: gallery)
	    	gallery.photos << FactoryGirl.create(:photo_two, gallery: gallery)
	    	gallery.photos << FactoryGirl.create(:photo_three, gallery: gallery)
	    end
    end

  end
end