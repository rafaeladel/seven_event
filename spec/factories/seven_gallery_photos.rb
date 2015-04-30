FactoryGirl.define do
  factory :photo, class: "SevenGallery::Photo" do
  	  	  
	  factory :photo_one do
	  end

	  factory :photo_two do
	  end

	  factory :photo_three do
	  end

	  factory :photo_with_gallery do
	  	association :seven_gallery_gallery_id, factory: gallery
	  end
  end
end