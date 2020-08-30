class ProductsController < ApplicationController

  def home
    @products = Product.all
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @product_ingredient = ProductIngredient.new
  end

  def create
    @product = Product.create!(product_params)
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

    private

  def product_params
    params[:name] = params[:product][:name]
    params[:weight] = params[:product][:weight]
    params[:unit_cost] = params[:product][:unit_cost]
    params.permit(:name, :weight, :unit_cost, photos: [])
  end
end
