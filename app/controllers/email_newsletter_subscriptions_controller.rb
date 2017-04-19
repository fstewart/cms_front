class EmailNewsletterSubscriptionsController < ApplicationController
  before_action :set_email_newsletter_subscription, only: [:show, :edit, :update, :destroy]

  # GET /email_newsletter_subscriptions
  # GET /email_newsletter_subscriptions.json
  def index
    @email_newsletter_subscriptions = EmailNewsletterSubscription.all
  end

  # GET /email_newsletter_subscriptions/1
  # GET /email_newsletter_subscriptions/1.json
  def show
  end

  # GET /email_newsletter_subscriptions/new
  def new
    @email_newsletter_subscription = EmailNewsletterSubscription.new
  end

  # GET /email_newsletter_subscriptions/1/edit
  def edit
  end

  # POST /email_newsletter_subscriptions
  # POST /email_newsletter_subscriptions.json
  def create
    @email_newsletter_subscription = EmailNewsletterSubscription.new(email_newsletter_subscription_params)

    respond_to do |format|
      if @email_newsletter_subscription.save
        format.html { redirect_to @email_newsletter_subscription, notice: 'Email newsletter subscription was successfully created.' }
        format.json { render :show, status: :created, location: @email_newsletter_subscription }
      else
        format.html { render :new }
        format.json { render json: @email_newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /email_newsletter_subscriptions/1
  # PATCH/PUT /email_newsletter_subscriptions/1.json
  def update
    respond_to do |format|
      if @email_newsletter_subscription.update(email_newsletter_subscription_params)
        format.html { redirect_to @email_newsletter_subscription, notice: 'Email newsletter subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @email_newsletter_subscription }
      else
        format.html { render :edit }
        format.json { render json: @email_newsletter_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /email_newsletter_subscriptions/1
  # DELETE /email_newsletter_subscriptions/1.json
  def destroy
    @email_newsletter_subscription.destroy
    respond_to do |format|
      format.html { redirect_to email_newsletter_subscriptions_url, notice: 'Email newsletter subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_email_newsletter_subscription
      @email_newsletter_subscription = EmailNewsletterSubscription.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def email_newsletter_subscription_params
      params.require(:email_newsletter_subscription).permit(:first_name, :last_name, :email)
    end
end
