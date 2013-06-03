json.array!(@orders) do |order|
  json.extract! order, :order_number, :customer_id, :notes
  json.url order_url(order, format: :json)
end