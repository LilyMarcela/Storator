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
    find_store
    @store.update(store_params)
  end

  def create
    @store = Store.new(store_params)
    @store.user_id = current_user.id
    @store.save!
  end

  def destroy
    find_store
    @store.destroy
  end

  def admin_panel
    @store = Store.find(params[:id])
  end


  private

  def find_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:store_name, :slogan, :description, :photo)
  end

end