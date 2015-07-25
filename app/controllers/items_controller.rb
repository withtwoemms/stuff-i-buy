class ItemsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @item = Item.new
  end

  def edit
  end

  def create
    Item.create(item_params)
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
