class LaunchController < ApplicationController
  #before_filter :authenticate_grad_user!, only: [:directory]
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
 
  def students
  end

  def partners
  end

  def admin
  end

  def corporate_login
  end

end
