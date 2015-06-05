class PinsController < ApplicationController
# extend ::Geocoder::Model::ActiveRecord

# geocoded_by :address
# reverse_geocoded_by :lat, :lng
# after_validation :geocode, :reverse_geocode
# attr_accessor :id, :description, :title, :lat, :lng, :address, :venue, :orientation, :date

  def index
    render json: @pins, each_serializer: PinSerializer
  end

  # def show
  #   render json: @pin, serializer: PinSerializer
  # end

  def show
  @pin = Pin.find(params[:id])
  respond_to do |format|
    format.html
    format.json { render json: @pin }
  end
end

  def new
    @pin = Pin.new
  end

  def edit
  end

  def create
    @pin = Pin.new(pin_params)
    if @pin.save
      redirect_to @pin, notice: 'Pin was successfully created.'
    else
      render :new
    end
  end

  def update
    if @pin.update(pin_params)
      redirect_to @pin, notice: 'Pin was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @pin.destroy
    redirect_to pins_url, notice: 'Pin was successfully destroyed.'
  end

  private
    def set_pin
      @pin = Pin.find(params[:id])
    end

    def pin_params
      params.require(:pin).permit(:id, :description, :title, :latitude, :longitude, :address, :venue, :orientation, :date)
    end
end
