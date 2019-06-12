# frozen_string_literal: true

class Account < ApplicationRecord
  has_one :cart

  validates :name, presence: true, length: { minimum: 8 }, if: :name_exclude_pattern
  validates :age, presence: true, numericality: { only_integer: true, :greater_than_or_equal_to => 18, :less_than_or_equal_to => 100}

  def name_exclude_pattern
    unless self.name !~ /^[0-9]+$/
      errors.add(:name, "invalid format.")
    end
  end
end