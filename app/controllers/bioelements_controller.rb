class BioelementsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def create
    @bioelement = Bioelement.new(bioelement_params)
    if @bioelement.save
      redirect_to bioelements_path
    else
      render :new
    end
  end

  private

  def bioelement_params
    params.require(:bioelement).permit(:name, :section)
  end
end
