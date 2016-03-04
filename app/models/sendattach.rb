class Sendattach < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.	   	
   mount_base64_uploader :attachment, AttachmentUploader
end
