json.array!(@design_versions) do |design_version|
  json.extract! design_version, :id, :project_id, :html, :comment_thread_count
  json.url design_version_url(design_version, format: :json)
end
