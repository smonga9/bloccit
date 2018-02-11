class UsersController < ApplicationController
  protect_from_forgery
  def new
    @user = User.new
  end

  def confirm
     @user = User.new
     p "confirm ****************"
     @user.name = params.permit([:user][:name])
     @user.email = params[:user][:email]
     @user.password = params[:user][:password]
     @user.password_confirmation = params[:user][:password_confirmation]

     p @user.name
   end

  def create
 # #9
     @user = User.new
     p "create ****************"
     @user.name = params[:user][:name]
     @user.email = params[:user][:email]
     @user.password = params[:user][:password]
     @user.password_confirmation = params[:user][:password_confirmation]

     p @user.name
 # #10
     if @user.save
       flash[:notice] = "Welcome to Bloccit #{@user.name}!"
       redirect_to root_path
     else
       flash.now[:alert] = "There was an error creating your account. Please try again."
       render :new
     end
   end
end
