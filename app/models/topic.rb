class Topic < ApplicationRecord
  has_many :votes, dependent: :destroy
  has_many :downvotes, dependent: :destroy

  def totalvotes()
  	self.votes.count - self.downvotes.count
  end

  def self.sorted_by_totalvotes
    Topic.all.sort_by(&:totalvotes).reverse
  end

end