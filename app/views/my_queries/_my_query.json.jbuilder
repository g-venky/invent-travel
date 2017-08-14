json.extract! my_query, :id, :created_at, :updated_at
json.url my_query_url(my_query, format: :json)
