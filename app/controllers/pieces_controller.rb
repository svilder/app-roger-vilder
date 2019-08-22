class PiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @pieces = Piece.all
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  def create
    @piece = Piece.new(piece_params)
    if @piece.save
      redirect_to pieces_path
    else
      render :new
    end
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :description, :dimensions, :year, :image, :category, :collection, :photo)
  end
end
