json.extract! @project, :user, :id, :name,:descriptions ,:project_confirm, :dueDate, :startDate, :project_status,:project_color

json.pmembers @project.pmembers, :id,:name, :user_avatar


json.projectmemberships @project.projectmemberships, :id, :pmember_id, :user_id, :pmember


json.projtalks @project.projtalks do |projtalk|
  json.(projtalk, :id, :user_id, :project_id, :name)

    json.talkresps projtalk.talkresps do |talkresp|
      json.(talkresp, :id,:talkcontent)
    end
end

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