class ItemsController < ApplicationController
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
    @store = Store.find(params[:store_id])
    @item = Item.new(item_params)
    @item.store_id = @store.id
    @item.save!
    redirect_to "/stores"
  end

  def destroy
    @item.destroy
  end


  private

  def find_item
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:item_name, :item_price, :description, :photo)
  end

end