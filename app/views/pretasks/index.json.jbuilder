json.array!(@pretasks) do |pretask|
  json.extract! pretask, :id, :name, :opdur, :nordur,:pesdur,:duration,:slack,:earlyStart,:earlyFinish,:lateStart,:lateFinish,:phase,:critPath
  json.url pretask_url(pretask, format: :json)
end
