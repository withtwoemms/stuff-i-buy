class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @list = List.find_by(id: params[:list_id])
    @item = @list.items.build
    @store = Store.new
  end

  def edit
    @list = List.find_by(id: params[:list_id])
    @item = Item.find_by(id: params[:id])
    render :edit
  end

  def create
    list = List.find_by(id: params[:list_id])
    store = Store.find_or_create_by(store_params)
    item = list.items.create(name: params[:item][:name], store_id: store.id)
    if item.valid?
      redirect_to list_path(list)
    else
      render :new
    end
  end

  def update
    list = List.find_by(id: params[:list_id])
    item = Item.find_by(id: params[:id])
    if item.update_attributes(item_params)#name: params[:item][:name])
      redirect_to list_path(list)
    else
      render :edit
    end
  end

  def destroy
    list = List.find_by(id: params[:list_id])
    Item.find_by(id: params[:id]).destroy
    redirect_to list_path(list)
  end

  private
    def store_params
      params.require(:store).permit(:name)
    end

    def item_params
      params.require(:item).permit(:name)
    end
end
