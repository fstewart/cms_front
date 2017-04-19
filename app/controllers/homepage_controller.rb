class HomepageController < ApplicationController
  layout "application"

  def index
    @homepage_carousels = HomepageCarousel.all.order('priority asc').paginate(:page => params[:page], :per_page => 5)
    @homepage_sections = HomepageSectionContent.all.order('priority asc').paginate(:page => params[:page], :per_page => 5)
    @quotes = Quote.all.order('id asc').paginate(:page => params[:page], :per_page => 5)
    @articles = Article.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
    @events = Event.all.order('created_at asc').paginate(:page => params[:page], :per_page => 5)
    @points_of_pride = Banner.all.order('priority asc')
  end

  def gallery
  end

  def quote
  end

  def news
  end

  def events
  end

  def welcome
    @homepage_carousels = HomepageCarousel.all.order('priority ASC')
    @homepage_section_contents = HomepageSectionContent.all.order('priority ASC')
    @main_message = HomepageSectionContent.first
    @quotes = Quote.all.order('id asc')
    @points_of_pride = Banner.all.sorted.published
    
    @featured_articles = Article.published.order('news_date DESC').where(featured: '1').first(1)
    @latest_news_articles = Article.published.order('news_date DESC').where(featured: '1').limit(3).offset(1)
    @nopic_articles = Article.published.order('news_date DESC').where(featured: '0').limit(5)
    
    @upcoming_events = Event.published.order('event_date DESC').limit(5)
    @upcoming_events2 = Event.published.order('event_date DESC').offset(5).limit(5)
    @upcoming_events3 = Event.published.order('event_date DESC').offset(10).limit(5)
    #@featured_event = Event.published.order('event_date DESC').where(featured: '1').first

    @datetime = Time.now

    @random_backvid = BackgroundVideo.offset(rand(BackgroundVideo.count)).first

    #require 'open_weather'
    #options = { units: 'imperial', APPID: '4d4bb91d38b0ee836ccbdfdbfff74457' }
    #@data =  OpenWeather::Current.city("Tuscaoosa, AL", options)
    #@weather_data = @data
    #  @weather = @weather_data['weather'][0]
    #@weather = @weather_data
    #@icon = @weather_data['weather'][0]['icon']
    #@temp = @weather_data['main']['temp']
    #@description = @weather_data['weather'][0]['description']
    
  end

  def article_things
    (0..4).map{ Article.new }
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
