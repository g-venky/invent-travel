json.extract! reply, :id, :my_doubt_id, :body, :seller_id, :created_at, :updated_at
json.url reply_url(reply, format: :json)
