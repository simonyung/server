class VcommentsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def create
    @video = Video.find(params[:video_id])
    @vcomment = @video.vcomments.create(params[:vcomment].permit(:vcomment, :video))
    @vcomment.user_id = current_user.id if current_user
    @vcomment.save

    if @vcomment.save
      redirect_to @video
    else
      render 'new'
    end
  end

  def edit
    @video = Video.find(params[:video_id])
    @vcomment = @video.vcomments.find(params[:id])
  end

  def update
    @video = Video.find(params[:video_id])
    @vcomment = @video.vcomments.find(params[:id])

    if @vcomment.update(params[:vcomment].permit(:vcomment))
      redirect_to video_path(@video)
    else
      render "edit"
    end
  end

  def destroy
    @video = Video.find(params[:video_id])
    @vcomment = @video.vcomments.find(params[:id])
    @vcomment.destroy
    redirect_to @video
  end
end
