class SubscriptionsController < ApplicationController

  def new

    unless params[:plan_id]
      return redirect_to plans_path
    end

    @plan = Plan.find params[:plan_id]

  end

  def create

    @plan = Plan.find params[:plan_id]

    render "new"

  end

end
