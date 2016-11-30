json.extract! doctor, :id, :user_name, :first_name, :last_name, :doctor_liscense, :email, :phone, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)