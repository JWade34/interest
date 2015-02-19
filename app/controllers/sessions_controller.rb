class SessionsController < ApplicationController
  def new
  end

  def create
    name = params[:name]
    password = params[:password]

    user = User.find_by name: name
    if user.try(:authenticate, password)
      session[:user_id] = user.id
      @current_user = user
    end

  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
