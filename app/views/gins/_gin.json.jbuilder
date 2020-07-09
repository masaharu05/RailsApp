json.extract! gin, :id, :name, :memo, :created_at, :updated_at
json.url gin_url(gin, format: :json)
