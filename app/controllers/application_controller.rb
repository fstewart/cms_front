class ApplicationController < ActionController::Base
  include Authority::Controller
  rescue_from DeviseLdapAuthenticatable::LdapException do |exception|
    render :text => exception, :status => 500
  end

  #before_action :authenticate_user!
  before_filter :configure_permitted_parameters, if: :devise_controller?
  #before_filter :redirect_to_sign_in, unless: :grad_user_signed_in?

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    if current_user.has_role? :admin
      dashboards_admin_path
    elsif current_user.has_role? :grad_user
      launch_directory_path
    else
      dashboards_index_path
    end
  end
  
  def after_sign_out_path_for(resource_or_scope)
    request.referrer
  end

  def remote_ip
    request.remote_ip
  end

  protected

  def redirect_to_sign_in
    redirect_to new_grad_user_session_path
  end

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
  end

end
