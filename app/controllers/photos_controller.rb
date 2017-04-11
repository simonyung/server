class PhotosController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show, :photo]
  load_and_authorize_resource

  def index
    @photos = Photo.where(["title LIKE ?","%#{params[:search]}%"])
  end


  def create
    @photo = current_user.photos.build(photo_params)
    if @photo.save
      redirect_to @photo
    else
      render :new
    end
  end

  def show

  end

  private

  def photo_params
    params.require(:photo).permit(:title, :content, :image)
  end
end

