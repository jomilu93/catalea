class ProductsController < ApplicationController

  def home
    @products = Product.all
  end

  def index
    @products = Product.all
  end

end
