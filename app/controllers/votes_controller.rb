class VotesController < ApplicationController

  def create
    @vote = Vote.new(vote_params)
    @list = @vote.item.list
    if @vote.save
      redirect_to list_path(@list)
    else
      redirect_to list_path(@list)
    end
  end
  private
  def vote_params
    params.require(:vote).permit(:amount, :item_id)
  end
end
