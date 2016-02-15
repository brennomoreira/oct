class AdminController < ApplicationController

  before_action  :authenticate_admin!
  # def authenticate_admin!
  #   root :to
  # end
  def home
  end
end
