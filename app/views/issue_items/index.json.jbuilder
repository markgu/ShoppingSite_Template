json.array!(@issue_items) do |issue_item|
  json.extract! issue_item, :id, :comment, :startDate, :finishDate
  json.url issue_item_url(issue_item, format: :json)
end
