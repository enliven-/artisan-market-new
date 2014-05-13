json.array!(@comment_threads) do |comment_thread|
  json.extract! comment_thread, :id, :pin_x, :pin_y, :design_version_id
  json.url comment_thread_url(comment_thread, format: :json)
end
