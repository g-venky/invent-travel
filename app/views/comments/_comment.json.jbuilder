json.extract! comment, :id, :topic_id, :body, :user, :created_at, :updated_at
json.url comment_url(comment, format: :json)
