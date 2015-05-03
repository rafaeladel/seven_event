FactoryGirl.define do
  factory :photo, class: SevenGallery::Photo do
    gallery
	  factory :photo_one do
	  end

	  factory :photo_two do
	  end

	  factory :photo_three do
	  end

	  # factory :photo_with_gallery do
	  # end
  end
end