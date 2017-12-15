json.extract! blog, :id, :title, :subtitle, :image, :body, :created_at, :updated_at
json.url blog_url(blog, format: :json)
