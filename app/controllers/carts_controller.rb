# frozen_string_literal: true

class CartsController < ApplicationController
  def show
    @cart_id = session[:cart_id]
    @products = Product.joins(@cart_id).where.not('cart_id' => nil )
  end
end
