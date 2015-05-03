module SevenGallery
  class PhotosController < ApplicationController
    include SevenGallery::Concerns::PhotosController

    before_action :get_photo, only: [:make_main]

    # PUT /:gallery_id/photos/make_main/:id
    def make_main
      @main_photo = Photo.find_by(seven_gallery_gallery_id: @gallery, is_main: true)

      unless @main_photo.nil?
        @main_photo.toggle(:is_main)
        @main_photo.save
      end

      @photo.toggle(:is_main)
      @photo.save
      p @gallery
      redirect_to seven_event.event_url(@gallery.event)
    end
  end
end
