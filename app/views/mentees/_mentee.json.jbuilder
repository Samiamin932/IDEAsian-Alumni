json.extract! mentee, :id, :first_name, :middle_name, :last_name, :email, :phone_number, :created_at, :updated_at
json.url mentee_url(mentee, format: :json)
