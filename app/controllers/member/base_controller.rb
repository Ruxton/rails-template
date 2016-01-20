class Member::BaseController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized

  layout "member/layout"
end
