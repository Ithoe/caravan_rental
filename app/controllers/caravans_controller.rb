class CaravansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @caravans = policy_scope(Caravan.where(sql_query, query: "%#{params[:query]}%"))
    else
      @caravans = policy_scope(Caravan)
    end
  end

  def show
    @caravan = Caravan.find(params[:id])
    authorize @caravan
    @booking = Booking.new
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
