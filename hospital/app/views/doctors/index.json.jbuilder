json.array!(@doctors) do |doctor|
  json.extract! doctor, :id, :name, :address, :city, :state, :zip, :degree_from, :Years_in_practice
  json.url doctor_url(doctor, format: :json)
end
