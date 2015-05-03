SevenEvent::Engine.routes.draw do
  resources :events
  mount SevenGallery::Engine, at: "/"

  put '/:gallery_id/photos/make_main/:id', to: '/seven_gallery/photos#make_main', as: "make_photo_main"
end
