json.array!(@users) do |user|
  json.extract! user, :id, :names, :surnames, :identifier, :telephone, :salary, :admission, :departure
  json.url user_url(user, format: :json)
end
