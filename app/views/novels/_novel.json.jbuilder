json.extract! novel, :id, :title, :description, :genre, :author_id, :created_at, :updated_at
json.url novel_url(novel, format: :json)
