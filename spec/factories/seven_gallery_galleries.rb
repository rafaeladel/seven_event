FactoryGirl.define do
  factory :gallery, class: 'SevenGallery::Gallery' do
    title "an event gallery"
    event
  end
end