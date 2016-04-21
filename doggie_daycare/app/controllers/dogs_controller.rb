class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      redirect_to dogs_url, notice: "Success!"
    else
      flash.now[:notice] = "Oops! Something goofed."
    end
  end

private
  def dog_params
    params. require(:dog).permit(:name, :age, :breed)
  end


end
