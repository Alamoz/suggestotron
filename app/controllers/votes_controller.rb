class VotesController < ApplicationController
  def create
    topic = Topic.find(params[:topic_id])
    
    vote = topic.votes.build
    vote.save!
    
    # these three lines do the same thing as the last line
    #vote = Vote.new
    #vote.topic_id = topic.id

    redirect_to(topics_path)
  end
  
  def downvote
    topic = Topic.find(params[:topic_id])   
    downvote = topic.downvotes.build
    downvote.save!
    
    redirect_to(topics_path)
  end
end
