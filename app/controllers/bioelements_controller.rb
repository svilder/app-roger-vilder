class BioelementsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @bioelements = Bioelement.all
  end

  def new
    @bioelement = Bioelement.new
  end

  def create
    @bioelement = Bioelement.new(bioelement_params)
    if @bioelement.save
      redirect_to contact_path
    else
      render :contact
    end
  end

  private

  def bioelement_params
    params.require(:bioelement).permit(:name, :section)
  end
end
