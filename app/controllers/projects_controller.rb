class ProjectsController < ApplicationController
  
  before_filter :require_login
  
  def new
    @project = Project.new
  end

  def create
    uploaded_io = params[:project][:preview] #public-> id/projects/index
    preview_path = "uploads/#{uploaded_io.original_filename}"
    File.open(Rails.root.join('public', preview_path), 'wb') do |file|
      file.write(uploaded_io.read)
    end
    
    @project = Project.new
    @project.user = current_user
    @project.preview_path = "/" + preview_path
    
    if @project.save
      flash[:notice] = "Project Saved!"
      redirect_to @project
    else
      flash[:error] = "Something went wrong"
      render :new
    end
  end

  def show
    @project = Project.find params[:id] 
  end
  
  def index
    
  end

  def edit
  
  end

  def update
  
  end

  def destoy
  
  end
end
