class DinosaursController < ApplicationController
  def index
    @dinosaurs = Dinosaur.all
  end

  def show
    @dinosaur = dinosaur_find
  end

  def new
    @dinosaur = Dinosaur.new
  end

  def create
    @dinosaur = Dinosaur.new(dinosaur_params)
    if @dinosaur.save
       redirect_to @dinosaur
    else
       render 'new'
    end
  end

  def edit
    @dinosaur = dinosaur_find
  end

  def update
    @dinosaur = dinosaur_find
    if @dinosaur.update_attributes(dinosaur_params)
      redirect_to @dinosaur
    else
      render 'edit'
    end
  end

    def destroy
      @dinosaur = dinosaur_find
      @dinosaur.destroy
      redirect_to dinosaurs_path
    end

private

  def dinosaur_params
    params.require(:dinosaur).permit(:name, :age, :image_url)
  end

  def dinosaur_find
    Dinosaur.find(params[:id])
  end

end
