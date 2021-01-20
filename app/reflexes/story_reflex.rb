# frozen_string_literal: true

class StoryReflex < ApplicationReflex
  # before_action :set_story, only: [:unstart, :start, :finish, :accept, :complete, :reject]

  delegate :current_user, to: :connection

  def new
    @story = current_user.stories.new
  end

  def create
    @story = current_user.stories.create!(story_params)
  end

  def destroy
    Story.find(element['data-id']).destroy
  end

 
  def unstart
    @story = Story.find(element['data-id'])
    @story.update_attributes(status: 0)
  end

  def start
    @story = Story.find(element['data-id'])
    @story.update_attributes(status: 1)
  end

  def finish
    @story = Story.find(element['data-id'])
    @story.update_attributes(status: 2)
  end

  def accept
    @story = Story.find(element['data-id'])
    @story.update_attributes(status: 3)
  end
  
  def complete
    @story = Story.find(element['data-id'])
    @story.update_attributes(status: 4)
  end

  def reject
    @story = Story.find(element['data-id'])
    @story.update_attributes(status: 5)
  end

  private

  def set_story
    @story = Story.find(element['data-id'])
  end

  def story_params
    params.require(:story).permit(:title, :description, :status, :user_id)
  end

end
