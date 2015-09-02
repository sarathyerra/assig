json.array!(@records) do |record|
  json.extract! record, :id, :name_of_pet, :type_of_pet, :breed, :age, :weight, :date_of_last_visit, :appointment_id
  json.url record_url(record, format: :json)
end
