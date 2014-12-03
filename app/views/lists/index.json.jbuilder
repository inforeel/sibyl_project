json.array!(@lists) do |list|
  json.extract! list, :id, :name, :machine_name, :internal_url
  json.url list_url(list, format: :json)
end
