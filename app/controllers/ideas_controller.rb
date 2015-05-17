class IdeasController < ApplicationController

  include IdeasHelper

  def new
    @current_idea = Idea.new
  end

  def create
    @current_idea = Idea.new(idea_params)
    if current_idea.save
      redirect_to ideas_path, :notice => 'Thanks for your idea! You rock!'
    else
      render 'new'
    end
  end

  private

    def idea_params
      params
        .require(:idea)
        .permit(:title, :desc_md, :category_id, :difficulty, :time)
    end

end
