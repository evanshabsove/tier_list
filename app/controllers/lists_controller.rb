class ListsController < ApplicationController

  def home
    @lists = List.all
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render :home
    end
  end

  def show
    @list = List.find(params[:id])
    @items = sort_items(@list.items)
    @item = Item.new
    @vote = Vote.new
  end

  private
  def list_params
    params.require(:list).permit(:title)
  end

  def sort_items(items)
    tier = { s: [], a: [], b: [], c: [], d: [], f: [] }
    items.each do |item|
      if item.total == 10
        tier[:s] << item
      elsif item.total == 9
        tier[:a] << item
      elsif item.total == 8 || item.total == 7
        tier[:b] << item
      elsif item.total == 6 || item.total == 5
        tier[:c] << item
      elsif item.total == 4 || item.total == 3
        tier[:d] << item
      else
        tier[:f] << item
      end
    end
    return tier
  end
end
