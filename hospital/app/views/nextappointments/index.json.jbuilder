json.array!(@nextappointments) do |nextappointment|
  json.extract! nextappointment, :id, :date_of_next_appointment, :reason_for_visit, :appointment_id
  json.url nextappointment_url(nextappointment, format: :json)
end
