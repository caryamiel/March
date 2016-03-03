json.extract! @pretask, :id, :name, :opdur, :nordur,:pesdur,:duration,:slack,:earlyStart,:earlyFinish,:lateStart,:lateFinish,:phase, :created_at, :updated_at

json.pretaskdependtos @pretask.pretaskdependtos do |pretaskdependto|
   json.(pretaskdependto, :id, :name, :activityID,:phase)
end

json.pretmembers @pretask.pretmembers do |pretmember|
		json.(pretmember, :id, :name, :user_avatar)
end	