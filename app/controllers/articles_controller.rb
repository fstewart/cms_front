class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  layout :resolve_layout
  after_action 

  def index
    if params[:tag]
      @articles = Article.tagged_with(params[:tag])
    else
      @articles = Article.all.sorted
    end
  end

  def show
    #@article = Article.all.find_by slug: (params[:id])
  end

  def new
    @article = Article.new
    @news_categories = NewsCategory.all
  end

  def edit
    #@article = Article.all.find_by slug: (params[:id])
  end

  def create
    @article = Article.new(article_params)
    #@article.valid?
    #@article.errors.messages
    respond_to do |format|
      if @article.save

        format.html { redirect_to articles_url, notice: 'Article was successfully created.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @article.should_generate_new_friendly_id?
    respond_to do |format|
      if @article.update(article_params)
        format.html {redirect_to articles_url, notice: 'Article was successfully updated.' }
        format.json {render :index, status: :ok, location: @article }

      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.json {head :no_content }
    end
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

  def set_article
    @article = Article.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def article_params
    params.require(:article).permit(:title,:featured,:author,:designation,:phone,:email,:story_url,:story_short_desc,:photo,:home_photo,:news_date,:approved_date,:quoted,:story_url, :body, :slug, :all_tags)
  end
end
