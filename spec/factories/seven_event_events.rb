FactoryGirl.define do
  factory :event, :class => 'SevenEvent::Event' do
    
    trait :valid_attr do
      title "event_title"
      description "event_description"
      start_at 2.days.from_now
    end

    trait :invalid_attr do
      title ""
      description ""
      start_at 2.days.ago
    end

    association :gallery, factory: :gallery_with_photos

    factory :valid_event, traits: [:valid_attr]
    factory :invalid_event, traits: [:invalid_attr]
  end
end
