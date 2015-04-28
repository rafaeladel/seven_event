FactoryGirl.define do
  factory :gallery, class: 'SevenGallery::Gallery' do
    title "an event gallery"
    after(:create) do |gallery|
      gallery.photos << FactoryGirl.create(:photo_one)
      gallery.photos << FactoryGirl.create(:photo_two)
      gallery.photos << FactoryGirl.create(:photo_three)
    end
  end
end