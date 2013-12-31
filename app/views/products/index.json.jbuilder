json.array!(@products) do |product|
  json.extract! product, :id, :name, :company, :price, :inStock, :info
  json.url product_url(product, format: :json)
end
