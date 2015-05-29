class CategoriesController < ApplicationController

  before_filter :authenticate_admin!, :except => [:show]

  def show
    @ideas = current_category.ideas
    render 'ideas/index'
  end

  def new
    @current_category = Category.new
  end

  def create
    @current_category = Category.new(category_params)
    if current_category.save
      redirect_to settings_path, :notice => 'Category saved!'
    else
      render 'new'
    end
  end

  def update
    if current_category.update(category_params)
      redirect_to settings_path, :notice => 'Category saved!'
    else
      render 'edit'
    end
  end

  def destroy
    current_category.destroy
    redirect_to settings_path, :notice => 'Category deleted!'
  end

  private

    def category_params
      params.require(:category).permit(:title)
    end

end
