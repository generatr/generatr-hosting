class PlansController < ApplicationController

  respond_to :json, :html

  def index

    @plans = Plan.all

    respond_with @plans do |format|
      format.html { render }
      format.json { render json: @plans }
    end

  end

  def show

    @plan = Plan.find params[:id]

    respond_with @plan do |format|
      format.html { render }
      format.json { render json: @plan }
    end

  end

end
