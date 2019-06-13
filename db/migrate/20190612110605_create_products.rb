# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.belongs_to :cart, index: true
      t.string :name
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
