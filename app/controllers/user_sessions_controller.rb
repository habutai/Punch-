class UserSessionsController < ApplicationController
  
  skip_before_filter :require_login, :except=>:destroy
  before_filter :require_logged_out, :only => [:new, :create]

  def new
    @user = User.new
  end

  def create
    if @user = login(params[:user][:email], params[:user][:password])
      redirect_to @user
    else
      @user = User.new( params[:user] )
      render :new
    end
  end

  def destroy
    logout
    redirect_to '/'
    
  end
end
