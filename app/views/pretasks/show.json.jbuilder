json.extract! @pretask, :id, :name, :opdur, :nordur,:pesdur, :created_at, :updated_at

json.pretaskdependtos @pretask.pretaskdependtos do |pretaskdependto|
   json.(pretaskdependto, :id, :name, :activityID)
end

json.pretmembers @pretask.pretmembers do |pretmember|
		json.(pretmember, :id, :name, :user_avatar)
end	