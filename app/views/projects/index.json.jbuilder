json.array!(@projects) do |project|
  json.extract! project, :id, :label, :description, :artisan_id, :design_versions_count, :parent_project_id, :show_in_catalog, :product_category_id, :customer_id
  json.url project_url(project, format: :json)
end
