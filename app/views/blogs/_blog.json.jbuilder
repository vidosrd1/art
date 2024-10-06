json.extract! blog, :id, :name, :title, :body, :created_at, :updated_at
json.url blog_url(blog, format: :json)
json.body blog.body.to_s
