# -*- encoding : utf-8 -*-
class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.references :user, :null => false
      t.integer :holistic_estimation, :limit => 1, :null => false
      t.text :answer_1, :answer_2, :answer_3
      t.timestamps
    end
  end
end
