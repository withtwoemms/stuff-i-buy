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
    @list = List.find_by(id: params[:list_id])
    item = Item.create(item_params)
    if item.valid?
      p ">" * 50
      p lists_path(@list)
      p params[:list_id]
      p ">" * 50
      redirect_to "/lists/#{params[:list_id]}" #list_path 
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
