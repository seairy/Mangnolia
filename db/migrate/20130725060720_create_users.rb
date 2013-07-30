# -*- encoding : utf-8 -*-
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, :limit => 100, :null => false
      t.string :password_digest, :limit => 100, :null => false
      t.string :name, :limit => 200, :null => false
      t.integer :gender, :limit => 1, :null => false
      t.string :occupation, :limit => 200, :null => false
      t.string :confucius_institute, :limit => 500, :null => false
      t.string :last_signin_ip, :limit => 15
      t.datetime :last_signined_at, :current_signined_at
      t.timestamps
    end
  end
end
