json.array!(@users) do |user|
  json.extract! user, :id, :userId, :firstName, :lastName, :password, :street, :city, :state, :postcode
  json.url user_url(user, format: :json)
end
