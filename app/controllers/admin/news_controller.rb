class Admin::NewsController < ApplicationController
  def add
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def index
  end

  def show
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

end
