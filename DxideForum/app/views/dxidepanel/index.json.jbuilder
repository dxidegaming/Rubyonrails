json.array!(@viewthreads) do |viewthread|
  json.extract! viewthread, :id, :Subject, :Text, :CreatedBy
  json.url viewthread_url(viewthread, format: :json)
end
