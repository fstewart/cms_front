class NewsroomController < ApplicationController
  layout :resolve_layout

  def index
    @page_title = "Newsroom"
    
    @events = Event.published.order('created_at DESC')
    
    @featured_articles = Article.published.order('news_date DESC').where(featured: '1').offset(1)
    @top_featured_article = Article.published.order('news_date DESC').where(featured: '1').first
    @articles = Article.published.order('news_date DESC').where(featured: '0').paginate(:page => params[:page], :per_page => 10)
    
    @upcoming_events = Event.published.order('event_date DESC').limit(5)
    @featured_event = Event.published.order('event_date DESC').where(featured: '1').first
        
  end

  def manage
    @articles = Article.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
    @events = Event.all.order('created_at DESC').paginate(:page => params[:page], :per_page => 5)
    @news_sliders = NewsSlider.all.paginate(:page => params[:page], :per_page => 5)
  end

  def new

  end

  def create

  end

  def destroy

  end

  def article
    @article = Article.friendly.find(params[:id])
  end
  
  def articles
  	#@featured_articles = Article.published.order('news_date DESC').where(featured: '1').first(4)
  	@articles = Article.published.order('news_date DESC').all.paginate(:page => params[:page], :per_page => 5)
  end
  
  def events
    @featured_events = Event.published.order('event_date DESC').where(featured: '1').first(4)
    @events = Event.published.order('event_date DESC').all.paginate(:page => params[:page], :per_page => 5)
  end

  def experts
    @page_title = "Experts Guide"
  end

  def press_releases
    @page_title = "Press Releases"
  end

  def media_resources
    @page_title = "Media Resources"
  end

  def academic_officials
    @page_title = "Academic Officials"
  end

  def event
    @event = Event.find(params[:id])
  end

  def share
  end

  private

  def resolve_layout
    case action_name
      when "manage", "new", "create", "destroy"
        "dashboard"
      else
        "application"
    end
  end

end
