json.array!(@events) do |event|
  json.extract! event, :id, :name, :host_id, :event_description, :imageurl, :user_id, :start_date, :end_date, :group_id, :tournament_id, :location, :outcome
  json.url event_url(event, format: :json)
end
