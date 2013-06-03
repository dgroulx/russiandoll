json.array!(@customers) do |customer|
  json.extract! customer, :name, :address, :email
  json.url customer_url(customer, format: :json)
end