class DosesController < ApplicationController
  def destroy
    @dose = Dose.find(params[:id])

    @dose.destroy
  end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.create(dose_params)
  end

  private
  def dose_params
    params.require(:dose).permit(:description, :cocktail, :ingredient)
  end
end
