class Banner < ActiveRecord::Base

	scope :sorted, lambda { order('priority ASC') }
	scope :published, lambda { where(:status => true) }
  	scope :unpublished, lambda { where(:status => false) }


end
