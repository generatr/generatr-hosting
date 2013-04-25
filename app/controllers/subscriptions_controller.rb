class SubscriptionsController < ApplicationController

  respond_to :json, :html

  def new

    unless params[:plan_id]
      return redirect_to plans_path
    end

    @plan = Plan.find params[:plan_id]

  end

  def create

    @subscription = Subscription.new(params[:subscription])

    unless @subscription.save
      respond_with @subscription do |format|
        format.html { render action: "new" }
        format.json { render json: @package.errors, status: :unprocessable_entity }
      end
    end

    respond_with @subscription, status: 201

  end

end
