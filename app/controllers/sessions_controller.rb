class SessionsController < ApplicationController

  def new
    #@session = Struct.new(:userId, :password)
  end

  def create
    puts "================================================="
    puts session_params
    user = User.authenticate(session_params)
    puts user
    if user
      session[:userId] = user.userId
      puts "session info => #{session[:userId]}"
      redirect_to products_path
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