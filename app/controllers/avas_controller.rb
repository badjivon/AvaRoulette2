class AvasController < ApplicationController
  def index
    @avas = Ava.all
  end

  def roulette
    @avas = Ava.all
  end

  def new
    @ava = Ava.new
  end

  def create
    @ava = Ava.new(ava_params)
    @ava.drop = 0
    if @ava.save
      redirect_to roulette_path
    else
      render 'ava/new'
    end
  end

  private

  def ava_params
    params.require(:ava).permit(:photo, :rare)
  end
end
