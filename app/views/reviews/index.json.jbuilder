json.array!(@reviews) do |review|
  json.extract! review, :id, :comment, :question_id, :status
  json.url review_url(review, format: :json)
end
