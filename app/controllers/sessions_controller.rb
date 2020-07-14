class SessionsController < ApplicationController
  before_action :current_user
  skip_before_action :current_user, only: [:new]
  
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/login'
    else
    session[:name] = params[:name]
    redirect_to '/welcome'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end
end