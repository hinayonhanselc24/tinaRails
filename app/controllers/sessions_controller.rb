class SessionsController < ApplicationController
  def create
    user = User.find_by(email: login_params[:email])
    staff = Staff.find_by(email: login_params[:email])

    if user && user.authenticate(login_params[:password])
      session[:user_id] = user.id
      redirect_to '/dashboard'

    elsif staff && staff.authenticate(login_params[:password])
      session[:staff_id] = staff.id
      redirect_to '/staff_dashboard' 

    else
      flash[:login_errors] = ['Invalid credentials!']
      redirect_to '/users' 
    end
  end

  def destroy
    session[:user_id] = nil
    session[:staff_id] = nil
    redirect_to '/' 
  end

  private

  def login_params
    params.require(:login).permit(:email, :password)
  end
end
