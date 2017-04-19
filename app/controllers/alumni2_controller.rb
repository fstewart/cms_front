class Alumni2Controller < ApplicationController
  layout :resolve_layout

  def alumni_home
    @chapters = AlumniChapter.all
    @hash = Gmaps4rails.build_markers(@chapters) do |chapter, marker|
      marker.lat chapter.latitude
      marker.lng chapter.longitude
    end
  end

  def ces
  end

  def career
  end

  def job_board
  end

  def educational_podcasts
  end

  def about_you
  end

  def alumni_achievements
  end

  def update_your_information
  end

  def about_us
  end

  def staff
  end

  def virtual_tour
  end

  def the_executive
  end

  def culverhouse_apparel
  end

  def giving
  end

  def donate
  end

  def supporting_culverhouse
  end

  def alumni_event_calendar
  end

  private

  def resolve_layout
    case action_name
      when "index", "new", "create", "destroy", "edit"
        "dashboard"
      else
        "alumni2"
    end
  end

end
