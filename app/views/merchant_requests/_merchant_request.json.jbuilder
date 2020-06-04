json.extract! merchant_request, :id, :merchant_type, :quantity, :slug, :created_at, :updated_at
json.url merchant_request_url(merchant_request, format: :json)
