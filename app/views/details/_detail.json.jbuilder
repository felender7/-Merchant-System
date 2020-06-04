json.extract! detail, :id, :shop_name, :email, :phone, :address_1, :address_2, :address_3, :created_at, :updated_at
json.url detail_url(detail, format: :json)
