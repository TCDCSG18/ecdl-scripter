json.array!(@ecdl_modules) do |ecdl_module|
  json.extract! ecdl_module, :id, :module_id, :name, :description
  json.url ecdl_module_url(ecdl_module, format: :json)
end
