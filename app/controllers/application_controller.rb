class ApplicationController < ActionController::Base
  protect_from_forgery

  #this was a devise method for allowing you to redirect to a new page post-login.
  # can anyone explain this to me?
  def after_sign_in_path_for(resource)
    request.env['omniauth.origin'] || stored_location_for(resource) || home_path
  end
end
