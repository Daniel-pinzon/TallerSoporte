json.extract! usuario, :id, :nombre, :apellido, :direccion, :telefono, :login, :password, :email, :or, :created_at, :updated_at
json.url usuario_url(usuario, format: :json)
