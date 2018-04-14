json.extract! sensor_reading, :id, :motion, :infrared, :light, :temperature, :created_at, :updated_at
json.url sensor_reading_url(sensor_reading, format: :json)
