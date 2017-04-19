class VisitorsController < ApplicationController


  #get /undergraduates
  def undergraduates
    render 'visitors/undergraduates.html.erb'
  end

  def department
    render 'visitors/department.html.erb'
  end

  def event
    render 'visitors/event.html.erb'
  end

  def graduates
    render 'visitors/graduates.html.erb'
  end

  def media
    render 'visitors/media.html.erb'
  end

  def recruiters
    render 'visitors/recruiters.html.erb'
  end

  def news
    render 'visitors/news.html.erb'
  end

  def links
    render 'visitors/links.html.erb'
  end

  def directory
    render 'visitors/directory.html.erb'
  end

  def studentservices
    render 'visitors/studentservices.html.erb'
  end

  def experts
    render 'visitors/experts.html.erb'
  end

  def faculty
    render 'visitors/faculty.html.erb'
  end

  def requests
    render 'visitors/request.html.erb'
  end
end
