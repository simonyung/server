class HomesController < InheritedResources::Base

  def index
    @homes = Home.all
    @posts = Post.all.where(["title LIKE ?","%#{params[:search]}%"]).order("created_at desc").limit(10)
    @photos = Photo.all.where(["title LIKE ?","%#{params[:search]}%"]).order("created_at desc").limit(3)
    @videos = Video.all.where(["title LIKE ?","%#{params[:search]}%"]).order("created_at desc").limit(3)
  end

  private

  def home_params
    params.require(:home).permit()
  end
end

