class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @list = List.find_by(id: params[:list_id])
    @item = @list.items.build
  end

  def edit
  end

  def create
    @list = List.find_by(id: params[:list_id])
    item = @list.items.create(item_params)
    if item.valid?
      redirect_to list_path(@list)
    else
      render :new
    end
  end

  def update
    list = List.find_by(id: params[:list_id])
    Item.find_by(id: params[:id]).update_attributes(item_params)
    redirect_to list_path(list)
  end

  def destroy
    list = List.find_by(id: params[:list_id])
    Item.find_by(id: params[:id]).destroy
    redirect_to list_path(list)
  end

  private
    def item_params
      params.require(:item).permit(:name)
    end
end
