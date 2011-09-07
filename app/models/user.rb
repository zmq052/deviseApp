class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  tango_user
  simple_roles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids
  
  def roles_list
#   [:user, :admin]
    []
  end
  
  def role_groups_list
  # [:user, :admin]
    []
  end
end
