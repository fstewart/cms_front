class SectionsController < ApplicationController
  before_action :find_page
  layout :resolve_layout

  def index
    #@page = Page.find(params[:page_id])
    #@sections = @page.sections.sorted
    #session[:return_to] = request.fullpath

    if params[:search]
      @sections = Section.search(params[:search])
    else
      @sections = @page.sections.all
    end

  end

  def show
    @section = Section.find(params[:id])
  end

  def new
    @section = Section.new({:page_id => @page.id, :title => "Default"})
    @pages = Page.find(params[:page_id])
    @section_count = Section.count + 1
  end

  def create
    @section = Section.new
    if @section.save
      flash[:notice] = "Section created successfully."
      redirect_to(:action => 'index', :page_id => @page.page_id)
    else
      @pages = Page.find(params[:id])
      @section_count = Section.count + 1
      render('new')
    end
  end

  #def create
  #  @section = Section.new(section_params)

   # if @section.save
      #format.html { redirect_to sections_url notice: 'Section was successfully created.' }
      #flash[:notice] = "Section created successfully."
      #redirect_to({:action => 'index', :page_id => @page.id})
      #render('index', :locals => {:page_id => @page.id} )
      #redirect_to({:action => 'index', :page_id => @page.id})
      #redirect_to(session[:return_to])
    #else
     # @pages = Page.all
     # @section_count = Section.count + 1
     # render('new')
   # end
  #end

  def edit
    @section = Section.find(params[:id])
    #@pages = Page.find_by_id(@page.id)
    @section_count = Section.count
  end

  def update
    @section = Section.find(params[:id])

    if @section.update_attributes(section_params)
      flash[:notice] = "Section updated successfully."
      #redirect_to({:action => 'index', :page_id => @page.id})
      render('index')
    else
      #@pages = Page.find_by_id(@page.id)
      @section_count = Section.count
      render('edit')
    end

  end

  def delete
    @section = Section.find(params[:id])
  end

  def destroy
    @section = Section.find(params[:id]).destroy
    flash[:notice] = "Section destroyed successfully."
    redirect_to({:action => 'index', :page_id => @page.id})
    #{:action => 'index', :page_id => @page.id}
  end

  private

    def resolve_layout
      case action_name
        when "index", "new", "create", "destroy", "edit"
          "dashboard"
        else
          "application"
      end
end

  # Never trust parameters from the scary internet, only allow the white list through.
  def section_params
    params.fetch(:section, {}).permit( :id, :page_id, :position, :title, :desc, :status, :_destroy,
                                      carousels_attributes: [:id, :section_id, :slide_priority, :slide_image, :slide_title, :slide_desc, :slide_video, :video_url, :status, :_destroy],
                                      texts_attributes: [:id, :section_id, :priority, :title, :body, :status, :_destroy],
                                      accordions_attributes: [:id, :section_id, :priority, :title, :desc, :status, :_destroy],
                                      galleries_attributes: [:id, :section_id, :priority, :title, :img_alt, :image, :status, :_destroy],
                                      iconboxes_attributes: [:id, :section_id, :priority, :icon, :title, :desc, :status, :_destroy],
                                      imageboxes_attributes: [:id, :section_id, :priority, :image, :title, :desc, :url, :target, :layout, :status, :_destroy],
                                      listgroups_attributes: [:id, :section_id, :priority, :title, :desc, :status, :_destroy],
                                      videos_attributes: [:id, :section_id, :position, :title, :url, :video_file , :status, :_destroy],
                                      timelines_attributes: [:id, :section_id, :event_date, :event_title, :event_content, :status, :_destroy],
                                      fullslides_attributes: [:id, :section_id, :priority, :image, :title, :desc, :url, :status, :_destroy]
                                      #profiles_attributes: [:id, :section_id, :priority, :user_id, :title, :desc, :url, :status, :_destroy]
                                      )
  end

  def find_page
    if params[:page_id]
      @page = Page.find(params[:page_id])
    end
  end

end