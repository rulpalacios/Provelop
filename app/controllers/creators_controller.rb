class CreatorsController < ApplicationController
  def show
    @creator = Creator.find(params[:id])
  end

  def edit
    @creator = Creator.find(params[:id])
    authorize @creator
  end

  def update
    @creator = Creator.find(params[:id])
    authorize @creator
    if @creator.update(creator_params)
      redirect_to @creator, notice: 'Información actualizada correctamente'
    else
      render :edit, alert: 'Ocurrio algun inconveniente al actualizar la información'
    end
  end

  private

  def creator_params
    params.require(:creator).permit(:avatar, :name, :about)
  end
end
