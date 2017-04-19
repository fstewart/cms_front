class CorporatePartnersController < ApplicationController
  
  http_basic_authenticate_with name: "cp", password: "password", except: :welcome

  def welcome
  end

  def registration
  end

  def directory
    if params[:search]
      @profiles = MandersonProfile.search(params[:search]).order("created_at DESC")
    elsif params[:candidate_type]
      @profiles = MandersonProfile.where(:candidate_type => params[:candidate_type]).alphasort
      #flash[:notice] = "There are <b>#{@profiles.count}</b> students in this field of study".html_safe
    else
      @profiles = MandersonProfile.published.alphasort
    end
  end

  def student_profile
    @student = MandersonProfile.find(params[:id])
  end

  def students
  end

  def partners
  end

  def admin
  end

  def corporate_login
  end

  private

  def manderson_profile_params
      params.require(:manderson_profile).permit(:id, :first_name, :middle_initial, :last_name, :nickname, :email, :phone, :hometown, :candidate_type, :grad_class, :ug_school, :ug_degree, :ug_year, :work_experience, :activities_honors, :volunteerism, :internship, :cskills, :manderson_profile_photo, :manderson_profile_cv, :favorite_book, :favorite_quote, :three_word_description, :something_unique,  :status, :registered)
  end

end
