json.array!(@tournaments) do |tournament|
  json.extract! tournament, :id, :name, :creator_id, :tournament_description, :imageurl, :user_id, :start_date, :end_date, :group_id
  json.url tournament_url(tournament, format: :json)
end
