json.array!(@comments) do |comment|
  json.extract! comment, :id, :user_id, :comment_thread_id, :text
  json.url comment_url(comment, format: :json)
end
