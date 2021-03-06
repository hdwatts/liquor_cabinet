class SessionsController < ApplicationController
  skip_before_action :check_age, :only => [:age]

  def new
  end

  def create
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to '/'
    else
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

  def age
    session[:age_verification] = 1
    render js: ''
  end
end
