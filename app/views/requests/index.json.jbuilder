json.array!(@requests) do |request|
  json.extract! request, :id, :title, :question, :due_date, :user_id
  json.url request_url(request, format: :json)
end
