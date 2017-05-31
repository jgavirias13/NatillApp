json.extract! user, :id, :nombre, :correo, :token
json.url user_url(user, format: :json)
