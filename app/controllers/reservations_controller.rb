class ReservationsController < ApplicationController
  def index
    @table = Table.find(params[:table_id])
    @reservations = @table.reservations
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @table = @restaurant.tables.find(params[:table_id])
    @reservation = @table.reservations.find(params[:id])
    # Add any other logic needed for the show action
  end

  def new
    @table = Table.find(params[:table_id])
    @reservation = @table.reservations.new
  end

  def create
    @table = Table.find(params[:table_id])
    @reservation = @table.reservations.new(reservation_params)
    if @reservation.save
      redirect_to restaurant_table_reservations_path(@table.restaurant, @table), notice: 'Reservation was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
    redirect_to restaurant_table_reservations_path(params[:restaurant_id], params[:table_id]), notice: 'Reservation was successfully deleted.'
  end

  private

  def reservation_params
    params.require(:reservation).permit(:name, :email, :reservation_time)
  end
end
