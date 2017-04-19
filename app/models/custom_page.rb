class CustomPage < ActiveRecord::Base

  has_many :pageRelations, :foreign_key => "custom_page_id", :class_name => "PageRelation"
  has_many :custom_pages, :through => :pageRelations

  def addSubPage(custom_page)
    self.custom_pages << custom_page
    custom_page.custom_pages << self
  end

end
