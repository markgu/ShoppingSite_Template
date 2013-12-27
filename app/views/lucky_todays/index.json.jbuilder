json.array!(@lucky_todays) do |lucky_today|
  json.extract! lucky_today, :id, :applied_at, :discountRate
  json.url lucky_today_url(lucky_today, format: :json)
end
