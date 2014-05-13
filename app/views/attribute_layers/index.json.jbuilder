json.array!(@attribute_layers) do |attribute_layer|
  json.extract! attribute_layer, :id, :label, :palette_id
  json.url attribute_layer_url(attribute_layer, format: :json)
end
