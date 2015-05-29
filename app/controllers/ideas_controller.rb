class IdeasController < ApplicationController

  include IdeasHelper

  def index
    @ideas = all_ideas
    @current_idea = Idea.new
  end

  def show
  end

  def new_search
    if params[:idea] && params[:idea][:title]
      @ideas = Idea.search_content(params[:idea][:title])
      @current_idea = Idea.new(idea_params)
      render 'new'
    else
      redirect_to root_path
    end
  end

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

  def edit
  end

  def update
    if current_idea.update(idea_params)
      redirect_to current_idea, :notice => 'Changes saved, you wishy-washy human!'
    else
      render 'edit'
    end
  end

  private

    def idea_params
      params
        .require(:idea)
        .permit(:title, :desc_md, :category_id, :status_id)
    end

end
