class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to sessions_new_path
    else
      session[:username] = params[:username]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :username
  end
end
