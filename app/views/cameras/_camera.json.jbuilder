json.extract! camera, :id, :name, :image, :price, :type, :created_at, :updated_at
json.url camera_url(camera, format: :json)
