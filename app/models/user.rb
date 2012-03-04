class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation

  authenticates_with_sorcery!
  
  validates_length_of :password, :minimum => 8, :message => "password must be at least 8 characters in length", :if => :password
  validates_confirmation_of :password, :message => "should match confirmation", :if => :password

end
