# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

puts 'SETTING UP ROLES'
 admin = Role.create! :name => 'admin'
 puts 'Role created: ' << admin.name 
 user = Role.create! :name => 'user' 
 puts 'Role created: ' << user.name
