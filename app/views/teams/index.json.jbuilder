json.array!(@teams) do |team|
  json.extract! team, :id, :country, :local_color, :external_color
  json.url team_url(team, format: :json)
end
