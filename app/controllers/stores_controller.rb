class StoresController < ApplicationController
  before_action :authenticate_user!

  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def new
    @store = Store.new
  end

  def edit
    @store = Store.find(params[:id])
  end 

  def update
    @store.update(store_params)
  end

  def create
    @store = Store.new(store_params)
    @store.save!
  end

  def destroy
    @store.destroy
  end


  private

  def find_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:store_name, :slogan, :description, :photo)
  end

end