json.array!(@publishers) do |publisher|
  json.extract! publisher, :id, :name, :email, :phone, :address
  json.url publisher_url(publisher, format: :json)
end
