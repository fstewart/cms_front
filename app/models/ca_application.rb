class CaApplication < ActiveRecord::Base
	
	mount_uploader :ca_cv, CaCvUploader
	mount_uploader :photo, PhotoUploader

end