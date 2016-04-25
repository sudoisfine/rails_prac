class BirdsController < ApplicationController
  def index
    @birds = Bird.all
  end

  def new
    @bird = Bird.new
  end

  def create
    @bird = Bird.new(bird_params)
    if @bird.save
      redirect_to birds_url, notice: "Success!"
    else
      flash.now[:notice] = "Oops! Something goofed."
    end
  end

private
  def bird_params
    params.require(:bird).permit(:name, :age, :species)
  end


end