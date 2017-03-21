class PhotosController < InheritedResources::Base
  before_action :authenticate_user!, except: [:index, :show, :photo]
  load_and_authorize_resource

  private

    def photo_params
      params.require(:photo).permit(:title, :content, :image)
    end
end

