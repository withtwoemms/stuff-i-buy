class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    @list = List.create(list_params)
    redirect_to lists_path
  end

  def edit
  end

  def show
    @list = List.find_by(id: params[:id])
    @items = @list.items
  end

  def update
  end

  def destroy
  end

  private
    def list_params
      params.require(:list).permit(:name)
    end
end
