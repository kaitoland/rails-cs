json.extract! contact, :id, :contact_date, :staff, :title, :status, :category, :summary, :plan, :created_at, :updated_at
json.url contact_url(contact, format: :json)
