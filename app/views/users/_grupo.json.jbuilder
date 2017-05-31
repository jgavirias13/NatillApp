json.extract! grupo, :id, :nombre, :ahorro_esperado, :ahorro_actual, :user_id, :cuota, :cuota_actual
json.url user_url(grupo, format: :json)
