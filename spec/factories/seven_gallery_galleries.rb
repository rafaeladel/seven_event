FactoryGirl.define do
  factory :gallery, class: SevenGallery::Gallery do
    title "an event gallery"

    association :event, factory: :event_for_gallery

    factory :gallery_with_photos do 
	    after(:build) do |gallery|
        create_list(:photo, 3, gallery: gallery)
	    end
    end

  end
end