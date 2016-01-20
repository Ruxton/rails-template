class Admin::BaseController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  layout "admin/layout"
end
