SevenEvent::Engine.routes.draw do
  resources :events
  mount SevenGallery::Engine, at: "/"
end
