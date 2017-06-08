class AddVotecountToTopic < ActiveRecord::Migration[5.0]
  def change
    add_column :topics, :votecount, :integer
  end
end
