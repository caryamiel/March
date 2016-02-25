json.array!(@deliverables) do |deliverable|
  json.extract! deliverable, :id, :name, :attachment, :description
  json.url deliverable_url(deliverable, format: :json)
end
