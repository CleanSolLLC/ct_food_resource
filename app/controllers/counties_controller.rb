class CountiesController < ApplicationController
  def index
    @counties = County.all
  end

  def food_pantries
    @county = County.find(params[:id])
    @food_pantries = @county.towns.includes(:food_pantries)

    respond_to do |format|
      format.turbo_stream
    end
  end
end
