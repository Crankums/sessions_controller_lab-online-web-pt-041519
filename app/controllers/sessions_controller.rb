class SessionsController < ApplicationController
  def new
  end

  def create
    if session[:name].empty?
      redirect_to '/new'
    session[:name] = params[:name]
    redirect_to '/'
  end

  def destroy
    session.delete :name
  end
end
