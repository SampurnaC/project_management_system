class CommentsController < ApplicationController
  before_action :set_story, only: [:show, :edit, :update, :destroy]

  def create
    @story = Story.find(params[:story_id])
    @comment = @story.comments.create(params[:comment].permit(:comment_body, :user_id))
  end



  private
    def comment_params
      params.require(:story).permit(:comment_body, :user_id, :story_id)
    end
end
