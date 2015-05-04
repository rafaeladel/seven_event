module SevenGallery
  class PhotosController < ApplicationController
    include SevenGallery::Concerns::PhotosController

    before_action :get_photo, only: [:make_main]

    # PUT /:gallery_id/photos/make_main/:id
    def make_main
      Photo.where({gallery: @gallery, is_main: true}).update_all("is_main = 0")

      @photo.toggle(:is_main)
      @photo.save

      redirect_to seven_event.event_url(@gallery.event)
    end
  end
end
