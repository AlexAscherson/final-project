json.array!(@groups) do |group|
  json.extract! group, :id, :name, :creator_id, :group_description, :imageurl
  json.url group_url(group, format: :json)
end
