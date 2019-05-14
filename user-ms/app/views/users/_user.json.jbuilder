json.extract! user, :id, :user_name, :password, :e_mail, :phone_number, :last_connection, :temp, :created_at, :updated_at
json.url user_url(user, format: :json)
