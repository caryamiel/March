json.extract! @project, :user, :id, :name, :project_confirm, :startDate, :project_status

json.pmembers @project.pmembers, :id,:name, :user_avatar


json.projectmemberships @project.projectmemberships, :id, :pmember_id, :user_id, :pmember



json.tasks @project.tasks do |task|
  json.(task, :id, :name,:task_priority, :startDate, :dueDate, :task_confirmation,)



	json.tmembers task.tmembers do |tmember|
		json.(tmember, :id, :name, :user_avatar)
	end	  


  json.taskdepends task.taskdepends do |taskdepend|
    json.(taskdepend, :id, :task_id, :taskdependto_id)
  end
   json.taskdependtos task.taskdependtos do |taskdependto|
    json.(taskdependto, :id, :name)
  end
end


json.pretasks @project.pretasks do |pretask|
  json.(pretask, :id,:name, :opdur,:nordur,:pesdur)

  json.pretaskdependtos pretask.pretaskdependtos do  |pretaskdependto|
   json.(pretaskdependto, :id, :name)
  end

  json.pretmembers pretask.pretmembers do |pretmember|
    json.(pretmember, :id, :name, :user_avatar)
  end 

end