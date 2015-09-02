json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :date_of_visit, :customer, :requires_reminder, :reason_of_visit, :doctor_id, :record_id
  json.url appointment_url(appointment, format: :json)
end
