json.array!(@admin_tasks) do |admin_task|
  json.extract! admin_task, :id
  json.url admin_task_url(admin_task, format: :json)
end
