# -*- encoding : utf-8 -*-
class QuestionnairesController < ApplicationController

  def show
    @questionnaire = Questionnaire.find(params[:id])
  end
  
  def new
    @questionnaire = Questionnaire.new
  end
  
  def edit
    @questionnaire = Questionnaire.find(params[:id])
  end
  
  def create
    @questionnaire = Questionnaire.new(params[:questionnaire])
    @questionnaire.user_id = session[:user][:id]
    if @questionnaire.save
      redirect_to notice_path, notice: '调查表填写完成！'
    else
      render action: "new"
    end
  end
  
  def update
    @questionnaire = Questionnaire.find(params[:id])
    if @questionnaire.update_attributes(params[:questionnaire])
      redirect_to @questionnaire, notice: 'Questionnaire was successfully updated.'
    else
      render action: "edit"
    end
  end
  
  def notice
    
  end
end
