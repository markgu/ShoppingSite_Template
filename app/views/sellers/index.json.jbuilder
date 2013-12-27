json.array!(@sellers) do |seller|
  json.extract! seller, :id, :name, :tel, :address
  json.url seller_url(seller, format: :json)
end
