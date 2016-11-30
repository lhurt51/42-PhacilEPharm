json.extract! patient, :id, :user_name, :first_name, :last_name, :email, :phone, :created_at, :updated_at
json.url patient_url(patient, format: :json)