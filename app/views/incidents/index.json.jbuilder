json.array!(@incidents) do |incident|
  json.extract! incident, :id, :comment
  json.url incident_url(incident, format: :json)
end
