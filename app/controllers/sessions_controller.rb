class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    user = User.find_by(userId: params[:userId])
    if user && user.authenticate(user, params[:password])
      session[user.userId] = user
      redirect_to products_url
    else
      flash[:error] = "Invalid userId/password combination"
      render 'new'
    end

  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    user = User.find(params[:id])
    session.delete(user.userId)
    redirect_to products_url
  end


end