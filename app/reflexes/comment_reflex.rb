# frozen_string_literal: true

class CommentReflex < ApplicationReflex

  delegate :current_user, to: :connection

  def create
    @story = Story.find(params[:id])
    @comment = @story.comments.create!(params[:comment].permit(:comment_body, :user_id))
  end

  def destroy
    Comment.find(element['data-id']).destroy
  end

end
