class Api::V1::CamerasController < ApplicationController
  before_action :set_camera, only: %i[show update destroy]

  # GET /cameras
  # GET /cameras.json
  def index
    @cameras = Camera.with_attached_images.all

    camera_data = @cameras.map do |camera|
      {
        id: camera.id,
        name: camera.name,
        daily_price: camera.daily_price,
        description: camera.description,
        images: camera.images.map do |image|
          {
            url: url_for(image),
            base64: Base64.strict_encode64(image.download)
          }
        end
      }
    end

    render json: camera_data
  end

  # GET /cameras/1
  # GET /cameras/1.json
  def show
    render json: @camera.as_json(include: :images).merge(
      images: @camera.images.map do |image|
        {
          url: url_for(image)

        }
      end
    )
  end

  # POST /cameras
  # POST /cameras.json
  def create
    @camera = Camera.new(camera_params.except(:image_urls))

    # Attach uploaded images
    images = Array(params[:camera][:images])
    @camera.images.attach(images) if images.any?

    # Process image URLs
    image_urls = Array(params[:camera][:image_urls])
    image_urls.each do |image_url|
      downloaded_image = URI.open(image_url)
      filename = File.basename(image_url)
      @camera.images.attach(io: downloaded_image, filename:)
    rescue StandardError => e
      puts "Error attaching image: #{e.message}"
    end

    if @camera.save
      render json: @camera, status: :created
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
    params.require(:camera).permit(:name, :image, :daily_price, :camera_type, :weekly_price, :two_week_price, :three_week_price, :four_week_price,
                                   :booked, :description, images: [])
  end
end
