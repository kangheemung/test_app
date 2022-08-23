class ApplicationController < ActionController::Base
   include SessionsHelper
    before_action :current_user
    protect_from_forgery unless: -> { request.format.json? }
    
    
end
