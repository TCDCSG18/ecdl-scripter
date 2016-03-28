json.array!(@test_scripts) do |test_script|
  json.extract! test_script, :id, :name, :syllabus_item_id
  json.url test_script_url(test_script, format: :json)
end
