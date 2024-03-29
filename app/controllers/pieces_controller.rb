class PiecesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    if params[:collection].nil?
      @pieces = Piece.all.shuffle
    else
      @pieces = Piece.where(collection: params[:collection]).shuffle
    end
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
