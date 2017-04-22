class MyactivitiesController < InheritedResources::Base

  def index
    @myactivities = Myactivity.all
    @posts = Post.all.where(["title LIKE ?","%#{params[:search]}%"]).order("created_at desc").limit(10)
    @photos = Photo.all.where(["title LIKE ?","%#{params[:search]}%"]).order("created_at desc").limit(3)
    @videos = Video.all.where(["title LIKE ?","%#{params[:search]}%"]).order("created_at desc").limit(3)
  end

  private

    def myactivity_params
      params.require(:myactivity).permit()
    end
end

