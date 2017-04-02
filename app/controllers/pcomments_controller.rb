class PcommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @photo = Photo.find(params[:photo_id])
    @pcomment = @photo.pcomments.create(params[:pcomment].permit(:pcomment, :photo))
    @pcomment.user_id = current_user.id if current_user
    @pcomment.save

    if @pcomment.save
      redirect_to @photo
    else
      render 'new'
    end
  end

  def edit
    @photo = Photo.find(params[:photo_id])
    @pcomment = @photo.pcomments.find(params[:id])
  end

  def update
    @photo = Photo.find(params[:photo_id])
    @pcomment = @photo.pcomments.find(params[:id])

    if @pcomment.update(params[:pcomment].permit(:pcomment))
      redirect_to photo_path(@photo)
    else
      render "edit"
    end
  end

  def destroy
    @photo = Photo.find(params[:photo_id])
    @pcomment = @photo.pcomments.find(params[:id])
    @pcomment.destroy
    redirect_to @photo
  end
end
