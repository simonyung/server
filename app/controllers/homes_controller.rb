class HomesController < InheritedResources::Base

  def index
    @homes = Home.all
    @posts = current_user.posts.order("created_at desc").limit(10)
    @photos = current_user.photos.order("created_at desc").limit(3)
    @videos = current_user.videos.order("created_at desc").limit(3)
  end

  private

  def home_params
    params.require(:home).permit()
  end
end

