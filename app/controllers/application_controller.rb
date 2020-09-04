class ApplicationController < ActionController::Base
  include Pundit
  before_action :authenticate_user!, except: [:home, :index, :show]
end
