class Topic < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  has_many :downvotes, dependent: :destroy
  attr_accessible :score
  
  def score
    topic_id = self.id.to_i
    upvotes = Vote.find_all_by_topic_id(topic_id)
    downvotes = Downvote.find_all_by_topic_id(topic_id)
    total_score = upvotes.size - downvotes.size
  end
end

