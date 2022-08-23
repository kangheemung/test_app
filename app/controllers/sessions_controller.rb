class SessionsController < ApplicationController
  def new
  end
  def create
    p "=============="
    p params
    p "=============="
       user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
          session[:user_id] = user.id
           redirect_to root_path
        else
          #p user.errors.full_messages
          flash.now[:danger] = 'Invalid email/password combination'
          render 'new'
        end
   end
  def destroy

    session[:user_id] = nil
    redirect_to root_path
  end  

  
end
