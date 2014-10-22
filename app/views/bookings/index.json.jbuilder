json.array!(@bookings) do |booking|
  json.extract! booking, :id, :name, :email, :phone, :user_id, :slot_id
  json.url booking_url(booking, format: :json)
end
