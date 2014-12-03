json.array!(@items) do |item|
  json.extract! item, :id, :name, :machine_name, :list, :description, :url
  json.url item_url(item, format: :json)
end
