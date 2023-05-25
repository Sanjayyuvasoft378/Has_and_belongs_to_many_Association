class AssembliesPartsController < ApplicationController
  before_action :current_assmbly_parts, only: [ :show, :edit, :destroy, :update ]
  def index
    @assemb_parts = AssembliesPart.all
  end
  def show
  end

  def new
    @assemb_part = AssembliesPart.new
  end

  def create
    @assemb_part = AssembliesPart.new(assmbly_parts_params)
    if @assemb_part.save
      redirect_to @assemb_part
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @assemb_part.update(assmbly_parts_params)
      redirect_to @assemb_part
    else
      render :edit, status: :unprocessable_entity
    end
  end
  
  def current_assmbly_parts
    @assemb_part = AssembliesPart.find(params[:id])
  end

  def assmbly_parts_params
    params.require(:assemblies_part).permit(:part_id, :assembly_id)
  end
end
