# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    cart = Cart.find(session[:cart_id])
    @products = cart.products
  end
end
