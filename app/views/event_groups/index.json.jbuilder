json.array!(@event_groups) do |event_group|
  json.extract! event_group, :id, :name, :creator_id, :group_description, :imageurl
  json.url event_group_url(event_group, format: :json)
end
