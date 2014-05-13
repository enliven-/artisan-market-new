json.array!(@attributes) do |attribute|
  json.extract! attribute, :id, :label, :attribute_layer_id
  json.url attribute_url(attribute, format: :json)
end
