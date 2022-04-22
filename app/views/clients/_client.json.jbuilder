json.extract! client, :id, :name, :document, :contact, :address, :email, :age, :created_at, :updated_at
json.url client_url(client, format: :json)
