json.array!(@task_items) do |task_item|
  json.extract! task_item, :id, :taskitem_id, :name, :description, :skillset_id
  json.url task_item_url(task_item, format: :json)
end
