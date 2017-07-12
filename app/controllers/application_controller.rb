require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  layout "public/layout"

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied, with: :user_not_authorized

protected

# Devise Overrides

  # Override CanCanCan method that expects an Ability object to be returned
  def current_ability
    AbilityLocator.new(current_user).get_ability
  end

  # Provided by Devise
  def after_sign_in_path_for(resource)
    stored_location_for(:user) || AfterSignInPath.new(resource).to_s
  end

private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || after_sign_in_path_for(current_user))
  end

end
