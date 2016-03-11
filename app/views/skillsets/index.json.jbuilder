json.array!(@skillsets) do |skillset|
  json.extract! skillset, :id, :skillset_id, :name, :description, :category_id
  json.url skillset_url(skillset, format: :json)
end
