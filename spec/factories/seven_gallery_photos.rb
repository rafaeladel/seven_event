FactoryGirl.define do
  factory :photo, class: "SevenGallery::Photo" do
  	
	  factory :photo_one, class: "SevenGallery::Photo" do
  		after(:create) do |photo| 
  			photo.gallery = gallery
  		end
	  end

	  factory :photo_two, class: "SevenGallery::Photo" do
	  end

	  factory :photo_three, class: "SevenGallery::Photo" do
	  end
  end
end