json.extract! myactivity, :id, :created_at, :updated_at
json.url myactivity_url(myactivity, format: :json)