json.array!(@categories) do |category|
  json.extract! category, :id, :category_id, :name, :description, :ecdl_module_id
  json.url category_url(category, format: :json)
end
