json.extract! author, :id, :name, :nickname, :bio, :created_at, :updated_at
json.url author_url(author, format: :json)
