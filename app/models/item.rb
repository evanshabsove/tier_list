class Item < ApplicationRecord
  belongs_to :list
  has_many :votes

  def total
    total = 0
    item = self
    votes = item.votes
    votes.each do |vote|
      total += vote.amount
    end
    if votes.length == 0
      return 0
    else
      return total/votes.length
    end
  end
end
