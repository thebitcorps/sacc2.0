json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date, :time, :place, :customer_id
  json.url appointment_url(appointment, format: :json)
end
