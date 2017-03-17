class SessionController < ApplicationController
  def new
  end

  def create
    user = User.find_by(username: params[:username])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tasks_path, notice: "Welcome back! It's a great day to get something done!"
    else
      flash.now[:alert] = "Log in failed..."
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    render :new, notice: "Adios!"
  end
end