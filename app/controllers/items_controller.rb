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
  end

  def destroy
  end

  private
    def item_params
      params.require(:item).permit(:name)
    end
end
