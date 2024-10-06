json.extract! article, :id, :user_id, :title, :name, :publish, :body, :created_at, :updated_at
json.url article_url(article, format: :json)
json.body article.body.to_s
