class CaravansController < ApplicationController
skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @caravans = policy_scope(Caravan)
  end

  def show
    @caravan = Caravan.find(params[:id])
    authorize @caravan
  end

  def new
    @caravan = Caravan.new
    authorize @caravan
  end

  def create
    @caravan = Caravan.new(caravans_params)
    @user = current_user
    @caravan.user_id = @user.id
    authorize @caravan
    if @caravan.save
      redirect_to caravan_path(@caravan)
    else
      render :new
    end
  end

  private

  def caravans_params
    params.require(:caravan).permit(:name, :description, :built_year, :brand, :daily_rate, photos: [])
  end
end
