class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :check_age

  def check_age
    @age = session[:age_verification]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  include SessionsHelper

  def authorize
    redirect_to '/login' unless current_user
  end

end
