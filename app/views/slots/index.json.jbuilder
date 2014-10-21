json.array!(@slots) do |slot|
  json.extract! slot, :id, :start_time, :end_time, :field_id
  json.url slot_url(slot, format: :json)
end
