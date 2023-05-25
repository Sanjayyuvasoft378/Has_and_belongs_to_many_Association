class AssembliesController < ApplicationController
  before_action :current_assembly, only: [ :show, :destroy, :edit, :update ]
  def index
    @assemblies = Assembly.all
  end

  def show
  end

  def new
    @assembly = Assembly.new
  end

  def create 
    @assembly = Assembly.new(assembly_params)
    if @assembly.save
      redirect_to @assembly
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @assembly.update(assembly_params)
      redirect_to @assembly
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @assembly.destroy
    redirect_to assemblies_path, status: :see_other
  end

  def assembly_params
    params.require(:assembly).permit(:name)
  end

  def current_assembly
    @assembly = Assembly.find(params[:id])
  end
end
