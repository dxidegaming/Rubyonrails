json.array!(@users) do |user|
  json.extract! user, :id, :email
  json.url viewthread_url(viewthread, format: :json)
end
