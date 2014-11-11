class PhotosController < ApplicationController
  def index
    @list_of_photos = Photo.all
  end

  def show
    @zebra = Photo.find(params[:id])
  end

  def new_form

  end

  def create_row
    @the_caption = params[:the_caption]
    @the_source = params[:the_source]
  end

  def destroy
    @zebra = Photo.find(params[:id])
    @zebra.destroy
  end

  def edit_form
  end


end
