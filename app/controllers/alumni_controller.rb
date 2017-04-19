class AlumniController < ApplicationController
  layout :resolve_layout

  def shareyourachievement
    @achievement = AlumniAchievement.new
  end

  def createachievement
    #@achievement = AlumniAchievement.new(params[(:alumni_params)]
    #@achievement.request = request
    #if @achievement.deliver
    #  flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    #else
    #  flash.now[:error] = 'Cannot send message.'
    #  render :alumni_home
    #end
  end

  def index
    @pages = Page.culverhousealumni.sort_by {|x| [x.id, x.parent_id]}
  end

  def alumni_home
    @pages = Page.culverhousealumni.sort_by {|x| [x.id, x.parent_id]}
    @alumni_achievement = AlumniAchievement.new
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
        "alumni"
    end
  end

  def alumni_params
    params.require(:alumni).permit(
                                 alumni_achievements_attributes: [:id, ])
  end

end
