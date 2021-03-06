class Item < ApplicationRecord
  belongs_to :list
  has_many :votes

  def total
    total = 0
    item = self
    votes = item.votes
    votes.each do |vote|
      if vote.amount != nil
        total += vote.amount
      end
    end
    if votes.length == 0
      return 0
    else
      return (total.to_f/votes.length).round
    end
  end
end
