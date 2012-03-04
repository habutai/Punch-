class Project < ActiveRecord::Base

  belongs_to :user

  attr_accessible :user_id, :preview_path

  validates_presence_of :user_id, :preview_path
  
  
end
