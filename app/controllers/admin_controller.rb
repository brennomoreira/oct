class AdminController < ApplicationController

  before_action  :authenticate_admin!
  def authenticate_admin!
    unless admin_signed_in?
      redirect_to root_path
    end
  end

  def home
  end
end
