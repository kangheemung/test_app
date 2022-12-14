class UsersController < ApplicationController
  def new
    @user= User.new
  end

  def create
   @user=User.new(user_params)
    if @user.save
      session[:user_id] =@user.id
      redirect_to root_path
    else
      render :new
    end  


  end
  def index
    @user= User.new
    @users = User.all
    
   
  end
  
  def mypage
    @user = User.find(session[:user_id])
    @users = User.all
  end
  
  private
    def user_params
        params.require(:user).permit(:name,:email,:password,:password_confirmation)
    end
end