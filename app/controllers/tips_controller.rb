class TipsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @tip = Tip.new
  end

  def edit
  end

  def create
    tip = Tip.new(tip_params)
    tip.save
    redirect_to tip_path(tip.id)
  end

  private
  # ストロングパラメータ
  def tip_params
    params.require(:tip).permit(:title, :body)
  end
end
