class TipsController < ApplicationController
  def index
    @tips = Tip.all
  end

  def show
    @tip = Tip.find(params[:id])
  end

  def new
    @tip = Tip.new
  end

  def edit
    @tip = Tip.find(params[:id])
  end

  def update
    tip = Tip.find(params[:id])
    tip.update(tip_params)
    redirect_to tip_path(tip.id)
  end

  def create
    tip = Tip.new(tip_params)
    tip.save
    redirect_to tip_path(tip.id)
  end

  private
  # ストロングパラメータ
  def tip_params
    params.require(:tip).permit(:title, :body, :image)
  end
end
