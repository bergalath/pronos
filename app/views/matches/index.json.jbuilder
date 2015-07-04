json.array!(@matches) do |match|
  json.extract! match, :id, :competition_id, :local_id, :visitor_id, :local_score, :visitor_score, :begin_at
  json.url match_url(match, format: :json)
end
