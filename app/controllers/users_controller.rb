class UsersController < ApplicationController
  
  skip_before_filter :require_login, :only => [:new, :create] 
  before_filter :require_logged_out, :only => [:new, :create]
  
  #GET /users/
  def new
    @user = User.new
  end

  #POST /users/
  def create
    @user = User.new params[:user]
    if @user.save
      flash[:notice] = "Welcome to Punch!"
      #log person in here
      redirect_to @user
    else
      flash[:error] = "You done fucked up"
      render :new
    end
  end

  #GET /users/:id/edit
  def edit
  end

  #PUT /users/:id
  def update
  end

  #GET /users/:id
  def show
  end
end
