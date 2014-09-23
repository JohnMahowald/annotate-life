class Api::JournalsController < ApplicationController
  
  def index
    journals = current_user.journals
    render json: journals
  end
  
  def create
    journal = current_user.journals.new(journal_params)
    
    if journal.save
      flash[:notice] = ["Successfully Created #{journal.title} Journal"]
      render json: journal
    else
      render json: journal.errors.full_messages, status: :unprocessable_entity
    end
  end
  
  def destroy
    journal = Journals.find(params[:id])
    journal.destroy
    render json: journal
  end
  
  private
  
  def journal_params
    params.require(:journal).permit(:title, :description);
  end
end
