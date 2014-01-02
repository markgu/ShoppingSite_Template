class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.authenticate(session_params[:userId], session_params[:password])
    if user
      sessions[:userId] = user.userId
      redirect_to products_url
    else
      flash[:error] = "Invalid userId/password combination"
      render action: 'new'
    end

  end

  # DELETE /sessions/1
  # DELETE /sessions/1.json
  def destroy
    sessions[:userId] = nil
    #user = User.find(params[:id])
    #session.delete(user.userId)
    redirect_to products_url
  end

  private
  def session_params
    params.require(:session).permit(:userId, :password)
  end

end