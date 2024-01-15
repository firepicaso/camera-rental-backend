class Api::V1::BookingsController < ApplicationController
  before_action :set_booking, only: %i[show update destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @booked_cameras = Camera.where(booked: true)
    render json: @booked_cameras, include: :camera_images
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show; end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      render :show, status: :created, location: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    if @booking.update(booking_params)
      render :show, status: :ok, location: @booking
    else
      render json: @booking.errors, status: :unprocessable_entity
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def booking_params
    params.require(:booking).permit(:camera_id, :user_id, :booking_date)
  end
end
