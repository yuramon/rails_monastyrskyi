# frozen_string_literal: true

class Cart < ApplicationRecord
  belongs_to :account, optional: true
  has_many :products
end
