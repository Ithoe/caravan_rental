class CaravansController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    @caravans = Caravan.all
    @caravans = policy_scope(Caravan)

    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @caravans = policy_scope(Caravan.where(sql_query, query: "%#{params[:query]}%"))
    end

    if params[:name_query].present?
      @caravans = @caravans.search_by_name(params[:name_query])
    end

    if params[:description_query].present?
      @caravans = @caravans.search_by_description(params[:description_query])
    end

    if params[:built_year_query].present?
      @caravans = @caravans.search_by_built_year(params[:built_year_query])
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
