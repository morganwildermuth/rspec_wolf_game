require_relative "../config"

class CreateWolves < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name
      t.string :gender
      t.integer :age
      t.integer :health
      t.belongs_to :pack
    end
  end
end