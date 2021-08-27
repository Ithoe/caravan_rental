class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking)
    @bookings = @bookings.where(user: current_user)
    @caravan_bookings = current_user.caravan_bookings
  end

  def new
    @caravan = Caravan.find(params[:id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(bookings_params)
    @caravan = Caravan.find(params[:caravan_id])
    @user = current_user
    @booking.user = @user
    @booking.caravan = @caravan
    authorize @booking
    if @booking.save!
      redirect_to bookings_path
    else
      render :'caravans/show'
    end
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :comment, :caravan_id, :user_id)
  end
end
