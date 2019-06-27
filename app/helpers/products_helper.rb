# frozen_string_literal: true

module ProductsHelper
  def products_list_partial_nam
    sum = Product.all.count
    result = sum > 0 ? '_list' : '_empty'
    render result.to_s
  end
end
