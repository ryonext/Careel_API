json.array!(@items) do |item|
  json.extract! item, :name, :type, :price, :amazon_link
  json.url item_url(item, format: :json)
end
