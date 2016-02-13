json.array!(@questions) do |question|
  json.extract! question, :id, :title, :body, :is_solved, :user_id, :image, :genre_id
  json.url question_url(question, format: :json)
end
