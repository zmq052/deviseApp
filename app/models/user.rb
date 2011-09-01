class User < ActiveRecord::Base
  has_and_belongs_to_many :roles
  
  tango_user
 
  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :role_ids
  
  def role?(role)
    return !!self.roles.find_by_name(role)
  end

  def roles_list
    return roles.all
  end
  
    def role_groups_list
    return roles.all
  end
end
