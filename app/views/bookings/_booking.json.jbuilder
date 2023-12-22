json.extract! booking, :id, :camera_id, :user_id, :booking_date, :created_at, :updated_at
json.url booking_url(booking, format: :json)
