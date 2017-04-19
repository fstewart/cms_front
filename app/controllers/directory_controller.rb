class DirectoryController < ApplicationController
  #has_scope :faculty
  #has_scope :staff

  def index
    
    if params[:search]
        @profiles = User.search(params[:search]).active
        #@faculty_profiles = User.search(params[:search]).active.faculty.alphasort
        #@staff_profiles = User.search(params[:search]).active.staff.alphasort
    
    elsif params[:departments]

      @deanpalan = User.where(:id => 748)
      @department = Department.friendly.find(params[:departments])
      @faculty_profiles = User.joins("join departments_users on users.id = departments_users.user_id").where(["departments_users.department_id = ?", params[:departments]]).active.faculty.alphasort
      @staff_profiles = User.joins("join departments_users on users.id = departments_users.user_id").where(["departments_users.department_id = ?", params[:departments]]).active.staff.alphasort
      @allfaculties = @faculty_profiles

      if params[:departments] == "1"
        @allfaculties = @deanpalan + @faculty_profiles
      end

    else
    
    @deanpalan = User.where(:id => 748)
    @faculty_profiles = User.active.faculty.alphasort
    @allfaculties = @deanpalan + @faculty_profiles


    @staff_profiles = User.active.staff.alphasort

    end
  end


  def profile
    @profile = User.friendly.find(params[:id])
  end
  
  def secure_params
  params.require(:user).permit(:role, :first_name, :last_name, :employee_type, :email, :slug, :middle_name, :suffix, :nickname, :title, :abbreviated_title, :po_box, :building_id, :phone, :profile_photo, :cv, :website, :google_scholar, :current_research, :education, :achievements, :selected_publications, :supervisor, :programs, :show_elevator, :show_title, :show_office, :show_department, :status, :mark_for_deletion, :role_ids => [], :department_ids => [] )
  end

end