json.extract! attachment, :id, :title, :description, :created_at, :updated_at
json.url attachment_url(attachment, format: :json)