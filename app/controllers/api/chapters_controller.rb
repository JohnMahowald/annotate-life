class Api::ChaptersController < ApplicationController
  def create
    chapter = Chapter.new(chapter_params)
    
    if chapter.save
      flash[:notice] = ["Successfully Created #{chapter.title} Chapter"]
      render json: chapter
    else
      render json: chapter.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def show
    @chapter = Chapter.includes(:stories).find(params[:id])
    
    if @chapter
      render :show
    else
      render json: @chapter.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def update
    @chapter = Chapter.find(params[:id])
    
    if @chapter.update_attributes(chapter_params)
      render :show
    else
      render json: @chapter.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  private
  
  def chapter_params
    params.require(:chapter).permit(:title, :chapter_num, :journal_id)
  end
end
