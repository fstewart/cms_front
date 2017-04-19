class PageRelation < ActiveRecord::Base

  belongs_to :parentPage, :foreign_key  => "custom_page_id", :class_name => "CustomPage"
  belongs_to :subPage, :foreign_key => "custom_page_id", :class_name => "CustomPage"

end
