class MandersonVisitorsController < ApplicationController
  before_action :set_manderson_visitor, only: [:show, :edit, :update, :destroy]

  # GET /manderson_visitors
  # GET /manderson_visitors.json
  def index
    @manderson_visitors = MandersonVisitor.all
  end

  # GET /manderson_visitors/1
  # GET /manderson_visitors/1.json
  def show
  end

  # GET /manderson_visitors/new
  def new
    @manderson_visitor = MandersonVisitor.new
    @staff = User.where('department_id' => '9')
  end

  # GET /manderson_visitors/1/edit
  def edit
  end

  # POST /manderson_visitors
  # POST /manderson_visitors.json
  def create
    @manderson_visitor = MandersonVisitor.new(manderson_visitor_params)

    respond_to do |format|
      if @manderson_visitor.save
        format.html { redirect_to @manderson_visitor, notice: 'Manderson visitor was successfully created.' }
        format.json { render :show, status: :created, location: @manderson_visitor }
      else
        format.html { render :new }
        format.json { render json: @manderson_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manderson_visitors/1
  # PATCH/PUT /manderson_visitors/1.json
  def update
    respond_to do |format|
      if @manderson_visitor.update(manderson_visitor_params)
        format.html { redirect_to @manderson_visitor, notice: 'Manderson visitor was successfully updated.' }
        format.json { render :show, status: :ok, location: @manderson_visitor }
      else
        format.html { render :edit }
        format.json { render json: @manderson_visitor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manderson_visitors/1
  # DELETE /manderson_visitors/1.json
  def destroy
    @manderson_visitor.destroy
    respond_to do |format|
      format.html { redirect_to manderson_visitors_url, notice: 'Manderson visitor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manderson_visitor
      @manderson_visitor = MandersonVisitor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manderson_visitor_params
      params.require(:manderson_visitor).permit(:user_id, :reason_for_visit, :visitor_type, :visitor_cwid, :visitor_name, :visitor_email, :visitor_grad_year)
    end
end
