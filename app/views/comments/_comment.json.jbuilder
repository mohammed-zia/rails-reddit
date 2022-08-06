json.extract! comment, :id, :body, :points, :user_id, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)
