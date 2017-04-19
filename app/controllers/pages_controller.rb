class PagesController < ApplicationController
  #before_filter :authenticate_user!, except: [:show, :show_old, :symposium]
  #before_filter :loadmetadata
  #before_filter :set_pagetitle
  #before_action :set_page, only: [:full_page, :full_show_page, :show, :show2, :symposium, :destroy]
  #before_action :set_identifier
  #authorize_actions_for Page
  layout :resolve_layout

  def set_pagetitle
    @pagetitle = 'Page Administration'
  end

  # Filters
  def loadmetadata
    @pagetitle = "Page Administration"
  end

  #Legacy Sites are stored in the public folder
  def symposium
    #@sections = @page.sections.published.sorted
    @legacy_url = "/legacy/basymposium_ua/"
    render "layouts/legacy"
  end

  def lift
    @legacy_url = "/legacy/lift/"
    render "layouts/legacy"
  end

  def cldc
    @legacy_url = "/legacy/cldc/"
    render "layouts/legacy"
  end


  # GET /pages
  # GET /pages.json
  def index
    #@pages = Page.all.by_department
    #@department = Department.all.alphasorted
    #@pages = Page.all.oldest_first
    #@pages = Page.filter(params.slice(:department_id, :program_id, :center_id, :user_id, :page_id))

    #if params[:search]
    #  @pages = Page.search(params[:search])
    #else
      #@pages = Page.filter(params.slice(:department, :program, :center,:ces_event, :emba, :event, :article))
	    #@pages = @org.pages
	  #end

    @pages = Page.where('parent_id=? OR parent_id=?', '0', 'NULL').alphasort.paginate(:page => params[:page], :per_page => 25)

    respond_to do |format|
      format.html # index.html.erb
      format.xml { render :xml => @pages }
    end

  end

  # GET /pages/1
  # GET /pages/1.json
  def full_page
    #@page = Page.find(params[:id].to_i)
		#@sections = @page.sections.published.sorted
    #@page = Page.find(params[:id])

    #respond_to do |format|
    #  format.html # show.html.erb
    #  format.xml  { render :xml => @page }
    #end
  end

  def nolinks
    @page = Page.friendly.find(params[:id])
  end

  def cmap

    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("139")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted

  end

  def acap
    @page = Page.friendly.find(params[:id])
    if @page.parent.present?
      @parent = @page.parent
    end
    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted

  end

  def summerprograms
    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end


  def ibp

    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("101")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted

  end

  def alumni
    @page = Page.friendly.find(params[:id])
    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end


  def students
    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("12")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted

  end

  def mba
    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("73")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted

  end

  def about
    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("1")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end

  def emba
    if params[:id].present?
      @page = Page.friendly.find(params[:id])
    else
      @page = Page.friendly.find("72")
    end

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end

  def full_page

    @page = Page.friendly.find(params[:id])

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end

  def full_show_page
    #@page = Page.find(params[:id].to_i)
    #@sections = @page.sections.published.sorted
    @page = Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

  def audience
    @page = Page.friendly.find(params[:id])

    respond_to do |format|
      format.html #audience.html.erb
      format.xml  { render :xml => @page }
    end
  end

  def show
    #@page = Page.find(params[:id].to_i)
		#@sections = @page.sections.published.sorted
    @page = Page.friendly.find(params[:id])

    if @page.parent.present?
      @parent = @page.parent
    end

    @sections = @page.sections.published.sorted
    @subpages = @page.subpages.published.sorted
  end

  def show2
    @page = Page.friendly.find(params[:id])
    @sections = @page.sections.published.sorted
    #@subpages = @page.subpages.published.sorted
  end

  def department
    #@page = Page.find(params[:id].to_i)
    #@sections = @page.sections.published.sorted
    @page = Page.friendly.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @page }
    end
  end

  def directory
    @users = User.all
  end

  # GET /pages/new
  def new
    #@page = Page.new({@id => @org.id})
    #authorize_action_for(@page)
    #@page_count = Page.count +1

    @page = Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @page }
    end

    @page_count = Page.count +1

  end

  # GET /pages/1/edit
  def edit
    @page = Page.find(params[:id])
    @page_count = Page.count
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

  #  if @page.save
  #    flash[:notice] = "Page created successfully."
  #    redirect_to(:controller => 'pages', :action => 'index', @id => @org.id)
  #  else
      # If save fails, redisplay the form so the user can fix the problem
  #    @page_count = Page.count + 1
  #    render('new')
  #  end

    respond_to do |format|
      if @page.save
        flash[:notice] = 'Page was successfully created.'
        format.html { redirect_to(pages_url) }
        format.xml  { render :xml => @page, :status => :created, :location => @page }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
   #@page = Page.find(params[:id])
   # if @page.update_attributes(page_params)
   #   flash[:notice] = "Page updated successfully"
   #   redirect_to(:action => 'index', @id => @org.id)
   # else
   #   @page_count = Page.count
   #   render ('edit')
   # end

    @page = Page.friendly.find(params[:id])

    respond_to do |format|
      if @page.update_attributes(page_params)
        flash[:notice] = 'Page was successfully updated.'
        format.html { redirect_to(pages_url)  }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @page.errors, :status => :unprocessable_entity }
      end
    end

  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
  #  @page.destroy
  #  flash[:notice] = "Page deleted successfully"
  #  redirect_to(request.env['HTTP_REFERER'])

    @page = Page.friendly.find(params[:id])
    @page.destroy

    respond_to do |format|
      format.html { redirect_to(pages_url) }
      format.xml  { head :ok }
    end

  end

  private

    def resolve_layout
      case action_name
        when "acap"
          "acap"
        else
          "application"
      end
	  end

    # Use callbacks to share common setup or constraints between actions.
    #def set_page
    #  @page = Page.friendly.find(params[:id])
    #end


    def page_params
params.fetch(:page, {}).permit(:id, :parent_id, :position, :title, :pagehead, :page_url, :external_url, :short_desc, :desc, :meta_title, :meta_keyword, :meta_description, :status, :department_id, :_destroy,
      		sections_attributes: [:id, :page_id, :position, :title, :desc, :status, :_destroy],
          calltoactions_attributes: [:id, :priority, :title, :color, :url, :target, :page_id, :_destroy ])
  	end

end