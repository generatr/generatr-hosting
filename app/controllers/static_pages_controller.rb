class StaticPagesController < ApplicationController

  def home

    @plans = Plan.limit(3)

  end

end
