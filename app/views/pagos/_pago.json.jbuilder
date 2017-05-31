json.extract! pago, :id, :grupo_id, :user_id, :valor, :created_at, :updated_at
json.url pago_url(pago, format: :json)
