class ProductionsController < ApplicationController
  def index
    @productions = Production.all
  end

  def show
    @production = Production.find(params[:id])
  end

  def new
    @production = Production.new
  end

  def create
    @production = Production.create!(
      date: params[:production][:date],
      quantity: params[:production][:quantity],
      product_id: params[:production][:product_ids]
    )
    if @production.save
      redirect_to production_path(@production)
    else
      render :new
    end
  end

  private

  def production_params
    # params[:day] = params[:production][:date(1i)]
    # params[:month] = params[:production][:date(2i)]
    # params[:year] = params[:production][:date(3i)]
    params[:quantity] = params[:production][:quantity]
    params[:product_id] = params[:production][:product_ids]
    params.require(:production).permit(:date, :quantity)
  end
end
