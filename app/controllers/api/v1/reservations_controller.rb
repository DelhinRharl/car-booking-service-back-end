class Api::V1::ReservationsController < ApplicationController
  before_action :set_reservation, only: %i[show update destroy]

  # GET /users/:user_id/reservations
  def index
    @reservations = User.find(params[:user_id]).reservations.map do |reservation|
      {
        created_at: reservation.created_at,
        car_model: "#{reservation.car.make} - #{reservation.car.model}",
        city: reservation.city,
        id: reservation.id,
      }
    end

    render json: @reservations
  end

  # GET /users/:user_id/reservations/1
  def show
    render json: @reservation
  end

  # POST /users/:user_id/reservations
  def create
    @reservation = Reservation.new(reservation_params)

    if @reservation.save
      render json: @reservation, status: :created
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/:user_id/reservations/1
  def update
    if @reservation.update(reservation_params)
      render json: @reservation
    else
      render json: @reservation.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/:user_id/reservations/1
  def destroy
    @reservation.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def reservation_params
    params.require(:reservation).permit(:user_id, :car_id, :city)
  end
end
