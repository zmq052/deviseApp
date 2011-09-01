CanTango.config do |config|
  config.engines.all :on
  #config.permit_engine :on
  #config.permission_engine :off
  
  config.permits.set :on
  config.permissions.set :off
  # more configuration here...
end