class UserPermit < CanTango::UserPermit
  def initialize ability
    super
  end

  protected

  def permit_rules
    # insert your can, cannot and any other rule statements here
	can :create, Post
	can :edit, Post   
 
     # use any licenses here
  end
end
