# frozen_string_literal: true

class CartsController < ApplicationController

  def show
    @carts = Product.joins(:cart)
  end
end
