class HomesController < InheritedResources::Base

  def index
    @homes = Home.all
    @posts = Post.all.order("created_at desc").limit(10)
    @photos = Photo.all.order("created_at desc").limit(3)
    @videos = Video.all.order("created_at desc").limit(3)
  end

  private

  def home_params
    params.require(:home).permit()
  end
end

