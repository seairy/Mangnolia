# -*- encoding : utf-8 -*-
class Questionnaire < ActiveRecord::Base
  
  validates :holistic_estimation, presence: true
  validates :answer_1, presence: true
  validates :answer_2, presence: true
  validates :answer_3, presence: true
end
