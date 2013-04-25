class SubscriptionsController < ApplicationController

  respond_to :json, :html

  def new

    unless params[:plan_id]
      return redirect_to plans_path
    end

    @plan = Plan.find params[:plan_id]

  end

  def create

    @customer = Customer.create!(params[:customer])

    params[:subscription][:start_date] = DateTime.new
    params[:subscription][:customer_id] = @customer.id

    @subscription = Subscription.new(params[:subscription])

    unless @subscription.save
      respond_with @subscription do |format|
        format.html { render action: "new" }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end

    respond_with @subscription, status: 201

  end

end
