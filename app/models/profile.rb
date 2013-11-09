class Profile < ActiveRecord::Base

	
  attr_accessible :location, :name, :phone,:attachment
   mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
  # validates  presence: true Make sure the owner's name is present.
end
