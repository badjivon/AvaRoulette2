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
    if @ava.save
      redirect_to avas_path
    else
      render 'ava/new'
    end
  end
end
