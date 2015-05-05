FactoryGirl.define do
  factory :event, :class => 'SevenEvent::Event' do


    trait :valid_attr do
      title "event_title"
      description "event_description"
      location "event_location"
      start_at 2.days.from_now
    end

    trait :invalid_attr do
      title ""
      description ""
      location ""
      start_at 2.days.ago
    end

    factory :event_for_gallery, traits: [:valid_attr]

    factory :valid_event, traits: [:valid_attr] do
      association :gallery, factory: :gallery_with_photos
    end

    factory :invalid_event, traits: [:invalid_attr]
  end
end
