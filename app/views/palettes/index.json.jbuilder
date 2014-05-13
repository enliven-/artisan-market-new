json.array!(@palettes) do |palette|
  json.extract! palette, :id, :label, :user_id, :project_id, :product_category_id
  json.url palette_url(palette, format: :json)
end
