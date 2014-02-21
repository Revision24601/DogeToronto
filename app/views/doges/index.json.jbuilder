json.array!(@doges) do |doge|
  json.extract! doge, :id
  json.url doge_url(doge, format: :json)
end
