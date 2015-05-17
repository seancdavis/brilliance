class StatusesController < ApplicationController

  before_filter :authenticate_admin!, :except => [:show]

  def new
    @current_status = Status.new
  end

  def create
    @current_status = Status.new(status_params)
    if current_status.save
      redirect_to settings_path, :notice => 'Status saved!'
    else
      render 'new'
    end
  end

  def update
    if current_status.update(status_params)
      redirect_to settings_path, :notice => 'Status saved!'
    else
      render 'edit'
    end
  end

  def destroy
    current_status.destroy
    redirect_to settings_path, :notice => 'Status deleted!'
  end

  private

    def status_params
      params.require(:status).permit(:title)
    end

end
