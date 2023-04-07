class SessionsController < ApplicationController
  def new
  end

  def create
    if current_user
      redirect_back_or_to admin_characters_path
    else
      @user = login(params[:email], params[:password])
      if @user
        redirect_back_or_to admin_characters_path, notice: "Logged in!"
      else
        flash.now.alert = "Email or password was invalid"
        render :new
      end
    end
  end

  def destroy
    logout
    redirect_to root_url, notice: "Logged out!"
  end

  def reg_admin
    unless User.find_by(email: ENV['ADMIN_EMAIL'])
      User.create(
        username: ENV['ADMIN_NAME'],
        password: ENV['ADMIN_PASSWORD'],
        password_confirmation: ENV['ADMIN_PASSWORD'],
        email: ENV['ADMIN_EMAIL']
      )
      User.create( username: ENV['ADMIN_NAME'], password: ENV['ADMIN_PASSWORD'], password_confirmation: ENV['ADMIN_PASSWORD'], email: ENV['ADMIN_EMAIL'] )
      redirect_to root_url, notice: "We have an admin now!"
    end

  end
end
