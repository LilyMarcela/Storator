class StoreController < ApplicationController
  before_action :authenticate_user!

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def new
    @item = Item.new
  end

  def edit
    @item = Item.find(params[:id])
  end 

  def update
    @item.update(item_params)
  end

  def create
    @item = Item.new()
    @item.save
  end

  def destroy
    @item.destroy
  end


  private

  def find_item
    @item = Item.find(params[:id])
  end

  def store_params
    params.require(:item).permit(:item_name, :item_price)
  end

end