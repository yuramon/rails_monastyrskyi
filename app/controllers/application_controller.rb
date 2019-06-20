# frozen_string_literal: true

class ApplicationController < ActionController::Base
  before_action :set_current_cart

  def set_current_cart
    session[:cart_id] ||= Cart.create.id
  end
end
