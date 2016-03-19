json.array!(@questions) do |question|
  json.extract! question, :id, :question_id, :stem, :task_item_id
  json.url question_url(question, format: :json)
end
