json.extract! commentreply, :id, :body, :comment_id, :user_id, :created_at, :updated_at
json.url commentreply_url(commentreply, format: :json)
