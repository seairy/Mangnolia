# -*- encoding : utf-8 -*-
class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authenticate
  
  protected
  def authenticate
    redirect_to signin_path if session[:user].blank?
  end
end
