class ListsController < ApplicationController
  def index
    @lists = List.all()
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list = List.new()
  end

  def create
    @list = List.new(list_params)
    @list.save
    redirect_to root_path
  end

  private

  def list_params
    params.require(:list).permit(:name, :photo)
  end
end
