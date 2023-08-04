json.extract! pet, :id, :name, :pet_type, :description, :date, :user_id, :created_at, :updated_at
json.url pet_url(pet, format: :json)
