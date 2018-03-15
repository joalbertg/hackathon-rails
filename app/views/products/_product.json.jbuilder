json.extract! product, :id, :name, :quantity, :active, :url_image, :amount, :references, :created_at, :updated_at
json.url product_url(product, format: :json)
