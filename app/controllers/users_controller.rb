# -*- encoding : utf-8 -*-
class UsersController < ApplicationController
  skip_before_filter :authenticate, :only => [:new, :create]
  
  def new
    @user = User.new
  end
  
  def edit
    @user = User.find(params[:id])
  end
  
  def create
    @user = User.new(params[:user])
    if @user.save
      redirect_to notice_path, notice: '注册成功！'
    else
      render action: "new"
    end
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: "edit"
    end
  end
end
