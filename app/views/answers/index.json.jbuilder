json.array!(@answers) do |answer|
  json.extract! answer, :id, :answer_id, :ans_text, :question_id
  json.url answer_url(answer, format: :json)
end
