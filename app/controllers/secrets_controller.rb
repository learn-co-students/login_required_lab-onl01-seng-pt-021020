class SecretsController < ApplicationController
  before_action :secret

  def method_name

  end

  private

  def secret
    if session[:name].nil? || session[:name].empty?
      redirect_to '/login'
    else
      render 'secrets/show'
    end
  end

end
