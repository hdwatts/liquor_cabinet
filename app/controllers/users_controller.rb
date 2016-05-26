class UsersController < ApplicationController

  def index
    redirect_to '/'
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id
      flash[:success] = "Welcome #{@user.first_name}!"
      redirect_to @user
    else
      str = ""
      @user.errors.full_messages.each { |error| str << "#{error}.<br>"}
      flash[:danger] = str.html_safe
      render 'new'
      flash.clear
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user.id != current_user.id
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user)
  end

private
  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :email, :password, :birth_date, :bio, :img_url, :img_upload)
  end

end
