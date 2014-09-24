class Api::ChaptersController < ApplicationController
  def show
    @chapter = Chapter.find(params[:id])
    
    if @chapter
      render :show
    else
      render json: @chapter.errors.full_messages, status: :unprocessable_entity
    end
  end
end
