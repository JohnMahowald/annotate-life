class Api::StoriesController < ApplicationController
  def update
    @story = Story.find(params[:id])
    
    if @story.update_attributes(stories_params)
      render json: @story
    else
      render json: @story.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  private
  
  def stories_params
    params.require(:stories).permit(:title, :text, :chapter_id, :ord)
  end
end
