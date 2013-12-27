json.array!(@frontpages) do |frontpage|
  json.extract! frontpage, :id, :display_at
  json.url frontpage_url(frontpage, format: :json)
end
