class PinsController < ApplicationController

  before_action :authenticate_user!


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
    @pin.user_id = @current_user.id

     @pin.save
      redirect_to root_path, notice: "so whatcha watcha watcha want..."

  end

end
