json.extract! customer, :id, :first_name, :last_name, :birthdate, :contact, :gender, :is_active, :created_at, :updated_at
json.url customer_url(customer, format: :json)
