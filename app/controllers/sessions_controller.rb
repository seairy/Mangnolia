# -*- encoding : utf-8 -*-
class SessionsController < ApplicationController
  skip_before_filter :authenticate

  def new
    
  end
  
  def create
    user = User.where(email: params[:email]).first.try(:authenticate, params[:password])
    unless user.blank?
      user.update_attribute :last_signined_at, user.current_signined_at
      user.update_attribute :current_signined_at, Time.now
      session[:user] = { id: user.id, name: user.name, last_signined_at: user.last_signined_at }
      redirect_to notice_path
    else
      redirect_to signin_path, :alert => '用户名或密码错误！'
    end
  end

  def destroy
    reset_session
    redirect_to signin_path
  end
end
