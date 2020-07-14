class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  def current_user
    session[:name]    
  end

  def welcome
    @current_user = current_user
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    end
  end
end
