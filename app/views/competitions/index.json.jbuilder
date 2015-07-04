json.array!(@competitions) do |competition|
  json.extract! competition, :id, :name, :country, :year
  json.url competition_url(competition, format: :json)
end
