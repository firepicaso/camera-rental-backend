class Api::V1::CamerasController < ApplicationController
  before_action :set_camera, only: %i[show update destroy]

  # GET /cameras
  # GET /cameras.json
  def index
    @cameras = Camera.all.includes(:camera_images)
    render json: @cameras, include: :camera_images
  end

  # GET /cameras/1
  # GET /cameras/1.json
  def show
    render json: @camera, include: :camera_images
  end

  # POST /cameras
  # POST /cameras.json
  def create
    @camera = Camera.new(camera_params)

    if @camera.save
      render :show, status: :created
    else
      render json: @camera.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cameras/1
  # PATCH/PUT /cameras/1.json
  def update
    if @camera.update(camera_params)
      render json: @camera, status: :ok
    else
      render json: @camera.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cameras/1
  # DELETE /cameras/1.json
  def destroy
    @camera.destroy!
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_camera
    @camera = Camera.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def camera_params
    params.require(:camera).permit(:name, :image, :daily_price, :camera_type, :weekly_price, :two_week_price, :three_week_price, :four_week_price, :booked)
  end

end
