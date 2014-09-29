class Api::StoriesController < ApplicationController
  def create
    story = Story.new(stories_params)
    if story.save
      render json: story
    else
      render json: story.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    story = Stroy.find(params[:id])
    if story
      render json: story
    else
      render json: story.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def update
    story = Story.find(params[:id])
    
    if story.update_attributes(stories_params)
      render json: story
    else
      render json: story.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy
    story = Story.find(params[:id])
    story.destroy
    render json: story
  end
  
  private
  
  def stories_params
    params.require(:story).permit(:title, :text, :chapter_id, :ord)
  end
end
