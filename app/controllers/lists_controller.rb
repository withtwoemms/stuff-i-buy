class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def new
    #@list = List.new
  end

  def create
  end

  def edit
  end

  def show
  end

  def update
  end

  def destroy
  end
end
