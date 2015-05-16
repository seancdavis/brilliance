class IdeasController < ApplicationController

  include IdeasHelper

  def new
    @current_idea = Idea.new
  end

  def create
    @current_idea = Idea.create!
    redirect_to idea_step_path(current_idea, 'title')
  end

  def edit
    render params[:step]
  end

  def update
    if current_idea.update(idea_params)
      redirect_to next_step
    else
      render params[:step]
    end
  end

  private

    def idea_params
      params.require(:idea).permit(
        :title,
        :desc_md,
        :category_id,
        :idea_requirements_attributes => [:id, :value, :setting_id],
        :idea_ratings_attributes => [:id, :value, :setting_id]
      )
    end

    def next_step
      params[:idea][:redirect]
    end

end
