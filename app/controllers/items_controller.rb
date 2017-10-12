class ItemsController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @item = Item.new(item_params)
    @item.list_id = @list.id
    if @item.save
      redirect_to list_path(@list)
    else
      redirect_to list_path(@list)
    end
  end


  private
  def item_params
    params.require(:item).permit(:title)
  end

end
