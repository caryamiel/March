json.extract! @pretask, :id, :name, :opdur, :nordur,:pesdur,:duration,:slack,:earlyStart,:earlyFinish,:lateStart,:lateFinish,:phase,:critPath, :created_at, :updated_at

json.pretaskdependtos @pretask.pretaskdependtos do |pretaskdependto|
   json.(pretaskdependto, :id, :name, :activityID,:phase,:critPath,:earlyFinish)
end
<<<<<<< HEAD
json.passive_predependtos @pretask.passive_predependtos do  |passive_predependto|
<<<<<<< HEAD
   json.(passive_predependto, :id,:name,:activityID,:phase,:critPath,:duration,:earlyFinish,:earlyStart)
=======
json.passive_predependtos @	pretask.passive_predependtos do  |passive_predependto|
   json.(passive_predependto, :id,:name,:activityID,:phase,:critPath,:duration,:earlyFinish)
>>>>>>> parent of 7935141... y
=======
   json.(passive_predependto, :id,:name,:activityID,:phase,:critPath,:duration,:earlyFinish,:lateStart)
>>>>>>> f27d129bdc9f756e0fd489b970d9998bc5889e0b
end

json.pretmembers @pretask.pretmembers do |pretmember|
		json.(pretmember, :id, :name, :user_avatar)
end	