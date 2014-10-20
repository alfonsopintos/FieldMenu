json.array!(@fields) do |field|
  json.extract! field, :id, :client_id, :max_people, :price
  json.url field_url(field, format: :json)
end
