class UsersController < ApplicationController
  layout "dashboard"
  #before_action :authenticate_user!
  #before_action :admin_only, :except => :show_old

  def index
 #  @users = User.all
    
    if params[:search]
      @users = User.search(params[:search]).order("created_at DESC").alphasort.paginate(:page => params[:page], :per_page => 50)
    elsif params[:departments]
      #From the original search where the department ID was included in the table
      #@users = User.where(:departments => params[:departments]).alphasort
    
      #Searches across the HABTM association
      @users = User.joins("join departments_users on users.id = departments_users.user_id").where(["departments_users.department_id = ?", params[:departments]]).alphasort.paginate(:page => params[:page], :per_page => 50)
      #flash[:notice] = "There are <b>#{@profiles.count}</b> students in this field of study".html_safe
    else
      @users = User.all.alphasort.paginate(:page => params[:page], :per_page => 50)
    end

    
  end

  def show
    @user = User.friendly.find(params[:id])
    unless current_user.has_role? :admin
      unless @user == current_user
        redirect_to admin_path, :alert => "Access denied."
      end
    end
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(secure_params)
    #@user.valid?
    #@user.errors.messages
    respond_to do |format|
      if @user.save
        format.html { redirect_to users_url, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
    @user = User.friendly.find(params[:id])
  end

  def update
    @user = User.friendly.find(params[:id])
    if @user.update_attributes(secure_params)
      redirect_to users_path, :notice => "User updated."
    else
      redirect_to users_path, :alert => "Unable to update user."
    end
  end

  def destroy
    user = User.friendly.find(params[:id])
    user.destroy
    redirect_to users_path, :notice => "User deleted."
  end

  private

  def resolve_layout
    case action_name
      when "index", "new", "create", "edit", "destroy", "show"
        "dashboard"
      else
        "application"
    end
  end

  def admin_only
    unless current_user.has_role? :admin
      redirect_to :back, :alert => "Access denied."
    end
  end

  def secure_params
    params.require(:user).permit(:role, :first_name, :last_name, :employee_type, :email, :middle_name, :suffix, :nickname, :title, :abbreviated_title, :po_box, :building_id, :phone, :profile_photo, :cv, :website, :google_scholar, :current_research, :education, :achievements, :selected_publications, :supervisor, :programs, :show_elevator, :show_title, :show_office, :show_department, :status, :mark_for_deletion, :all_expertises, :role_ids => [], :department_ids => [] )
  end

end