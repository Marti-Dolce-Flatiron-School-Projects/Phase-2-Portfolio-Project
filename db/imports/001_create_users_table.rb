require 'mysql2'

class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.Integer :id
      t.String :name, :unique => true, :length => 32
      t.String :password, :length => 32

      t.timestamp :created_at, :null => false
      t.timestamp :updated_at, :null => false
    end
  end
end