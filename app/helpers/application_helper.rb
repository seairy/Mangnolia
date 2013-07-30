# -*- encoding : utf-8 -*-
module ApplicationHelper
  
  def flash_tag
    if flash[:alert]
      content_tag 'p', h(flash[:alert]), class: 'notice alert'
    elsif flash[:notice]
      content_tag 'p', h(flash[:notice]), class: 'notice'
    end
  end
end
