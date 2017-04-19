class DashboardsController < ApplicationController
  layout "dashboard"
  before_action :set_stats, only: [:index, :faculty, :staff, :alumni, :grad_students, :departments, :admin, :tech]

  def index
  end

  def profile

  end

  def faculty
  end

  def staff
  end

  def alumni
  end

  def grad_students
  end

  def departments
  end

  def admin
    @users = User.all
  end

  def tech
  end

  private

  def set_stats
    @user_count = User.count
    @department_count = Department.count
    @program_count = Program.count
    @page_count = Page.count
  end


end
