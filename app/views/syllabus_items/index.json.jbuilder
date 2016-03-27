json.array!(@syllabus_items) do |syllabus_item|
  json.extract! syllabus_item, :id, :name
  json.url syllabus_item_url(syllabus_item, format: :json)
end
