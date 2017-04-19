class AdminController < ApplicationController

  layout "dashboard"

  def index
    @ip = request.remote_ip
    #redirect_to root_path unless @ip

  end

  private

end