class CaravansController < ApplicationController

  def index
    @caravans = Caravan.all
  end

  def show
    @caravan = Caravan.find(params[:id])
  end

  def new
    @caravan = Caravan.new
  end

  def create
    @caravan = Caravan.new(caravans_params)
    if @caravan.save
      redirect_to caravan_path(@caravan)
    else
      render :new
    end
  end

  private

  def caravans_params
    params.require(:caravan).permit(:name, :description, :built_year, :brand, :daily_rate)
  end
end
