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
end
