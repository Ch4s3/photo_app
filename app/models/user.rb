class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :email, :user_name, :password, :on => :create

end