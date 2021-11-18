json.extract! order, :id, :currency, :gross, :discount, :net, :created_at, :updated_at
json.url order_url(order, format: :json)
