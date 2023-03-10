class TeasController < ApplicationController
  before_action :current_tea, only: [:show, :edit, :update, :destroy]

  def index
    @teas = Tea.all
  end

  def show

  end

  def new
    @tea = Tea.new
  end

  def create
    tea = Tea.create(tea_params)

    redirect_to teas_path
  end
  
  
  def edit
  end
  
  def update
    @tea.update(tea_params)

    redirect_to teas_path
  end

  def destroy
    @tea.destroy

    redirect_to teas_path
  end

  private

  def tea_params
    params.require(:tea).permit(:name, :kind, :desc)
  end

  def current_tea
    @tea = Tea.find(params[:id])
  end

end
