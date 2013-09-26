require_relative '../config'

class CreatePacks < ActiveRecord::Migration
  def change
    create_table :packs do |t|
      t.string :name
    end
  end
end