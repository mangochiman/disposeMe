class UsersController < ApplicationController
   skip_before_filter :authenticate_user, :only => [:login, :authenticate, :create, :reset_password]
  def login

  end

  def logout

  end

  def new_user

  end

  def view_users

  end

  def void_users
    
  end

  def authenticate_user
    user = User.find_by_username(params['username'])
    logged_in_user = User.authenticate(params[:username], params[:password])

    if logged_in_user
      session[:user] = user
      redirect_to("/pages") and return
    else
      flash[:error] = "Invalid username or password"
      redirect_to("/login") and return
    end
  end
end
