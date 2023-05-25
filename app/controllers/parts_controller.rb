class PartsController < ApplicationController
  before_action :current_part, only: [ :show, :edit, :destroy, :update ]
  def index
    @parts = Part.all
  end

  def show
  end

  def new
    @part = Part.new 
  end

  def create
    @part = Part.new(part_params)
    if @part.save
      redirect_to @part
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @part.update(part_params)
      redirect_to @part, message: "data Updated successfully"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @part.destroy
    redirect_to parts_path status: :see_other
  end

  def part_params
    params.require(:part).permit(:part_number)
  end

  def current_part 
    @part = Part.find(params[:id])
  end
end
