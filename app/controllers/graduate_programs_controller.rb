class GraduateProgramsController < ApplicationController

  def index
  	@departments = Department.alphasort.all
    @page = Page.friendly.find(params[:id])
  end

  def show
  	#@department = Department.friendly.find(params[:id])
  	#@page = @department.pages.published
  	#It must be active
  	#It must be published
  	#It must be a parent or child of a parent
  	@page = Page.friendly.find(params[:id])
  end
end
