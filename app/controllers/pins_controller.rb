class PinsController < ApplicationController

  def index
    @pins = Pin.all
    @pin = Pin.new
    @user = User.new
  end

  def new
    @pin = Pin.new
  end

  def create
    @pin = Pin.new params.require(:pin).permit(:title, :photo)

     @pin.save
      redirect_to root_path, notice: "so whatcha watcha watcha want..."

  end

end
