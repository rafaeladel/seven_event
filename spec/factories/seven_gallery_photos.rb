FactoryGirl.define do
  factory :photo, class: SevenGallery::Photo do
    association :gallery, factory: :gallery_with_event
  end
end