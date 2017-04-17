class ArticlesController < InheritedResources::Base

  private

    def article_params
      params.require(:article).permit(:titile, :body)
    end
end

