json.array!(@products) do |product|
  json.extract! product, :id, :company, :price, :inStock, :info
  json.url product_url(product, format: :json)
end
