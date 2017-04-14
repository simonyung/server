class HomesController < InheritedResources::Base

  def index
    @posts = Post.order("created_at desc").limit(4).offset(1)
    @photos = Post.order("created_at desc").limit(4).offset(1)
    @videos = Post.order("created_at desc").limit(4).offset(1)
  end

  private

    def home_params
      params.require(:home).permit()
    end
end

