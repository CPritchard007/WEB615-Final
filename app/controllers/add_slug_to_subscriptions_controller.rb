class AddSlugToSubscriptionsController < ApplicationController
  before_action :set_add_slug_to_subscription, only: [:show, :edit, :update, :destroy]

  # GET /add_slug_to_subscriptions
  # GET /add_slug_to_subscriptions.json
  def index
    @add_slug_to_subscriptions = AddSlugToSubscription.all
  end

  # GET /add_slug_to_subscriptions/1
  # GET /add_slug_to_subscriptions/1.json
  def show
  end

  # GET /add_slug_to_subscriptions/new
  def new
    @add_slug_to_subscription = AddSlugToSubscription.new
  end

  # GET /add_slug_to_subscriptions/1/edit
  def edit
  end

  # POST /add_slug_to_subscriptions
  # POST /add_slug_to_subscriptions.json
  def create
    @add_slug_to_subscription = AddSlugToSubscription.new(add_slug_to_subscription_params)

    respond_to do |format|
      if @add_slug_to_subscription.save
        format.html { redirect_to @add_slug_to_subscription, notice: 'Add slug to subscription was successfully created.' }
        format.json { render :show, status: :created, location: @add_slug_to_subscription }
      else
        format.html { render :new }
        format.json { render json: @add_slug_to_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_slug_to_subscriptions/1
  # PATCH/PUT /add_slug_to_subscriptions/1.json
  def update
    respond_to do |format|
      if @add_slug_to_subscription.update(add_slug_to_subscription_params)
        format.html { redirect_to @add_slug_to_subscription, notice: 'Add slug to subscription was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_slug_to_subscription }
      else
        format.html { render :edit }
        format.json { render json: @add_slug_to_subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_slug_to_subscriptions/1
  # DELETE /add_slug_to_subscriptions/1.json
  def destroy
    @add_slug_to_subscription.destroy
    respond_to do |format|
      format.html { redirect_to add_slug_to_subscriptions_url, notice: 'Add slug to subscription was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_slug_to_subscription
      @add_slug_to_subscription = AddSlugToSubscription.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_slug_to_subscription_params
      params.fetch(:add_slug_to_subscription, {})
    end
end
