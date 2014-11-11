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
    @zebra = Photo.new
    @zebra.caption = params[:the_caption]
    @zebra.source = params[:the_source]
    @zebra.save
  end

  def destroy
    @zebra = Photo.find(params[:id])
    @zebra.destroy
  end

  def edit_form
    @zebra = Photo.find(params[:id])
  end

  def update_row
    @zebra = Photo.find(params[:id])
    @zebra.caption = params[:the_caption]
    @zebra.source = params[:the_source]
    @zebra.save
  end

end
