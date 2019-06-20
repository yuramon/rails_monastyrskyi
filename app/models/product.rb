# frozen_string_literal: true

class Product < ApplicationRecord
  belongs_to :cart, optional: true
  validates :name, presence: true
  validates :price, numericality: { greater_than: 0 }
end
