CanTango.config do |config|
  config.engines.all :on
  config.users.registered  :user, :admin
  
  CanTango::Configuration.guest.user user
  # more configuration here...
end
