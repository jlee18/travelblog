class UserSessionsController < ApplicationController
  UserSession.create(:login => "admin", :password => "changi", :remember_me => true)

  session = UserSession.new(:login => "admin", :password => "changi", :remember_me => true)
  session.save

  UserSession.create(:openid_identifier => "identifier", :remember_me => true)

  UserSession.create(my_user_object, true)
  
  session.destroy
  
  session = UserSession.find

end
