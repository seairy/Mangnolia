# -*- encoding : utf-8 -*-
class User < ActiveRecord::Base
  has_secure_password
  
  validates :email, presence: true, length: { maximum: 50 }
  validates :name, presence: true, length: { maximum: 100 }
  validates :gender, presence: true
  validates :occupation, presence: true, length: { maximum: 100 }
  validates :confucius_institute, presence: true, length: { maximum: 250 }
end
