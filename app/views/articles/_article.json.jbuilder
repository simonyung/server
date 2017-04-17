json.extract! article, :id, :titile, :body, :created_at, :updated_at
json.url article_url(article, format: :json)