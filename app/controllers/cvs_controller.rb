class CvsController < ApplicationController
  def index
    @cvs = Cv.all
  end

  def new
    @cv = Cv.new
  end

  def create
    @cv = Cv.create(cv_params)

    if @cv.save
      redirect_to @cv
    else
      render 'new'
    end
  end

  def edit
  end

  def show
    @cv = Cv.find(params[:id])
  end

  private

  def cv_params
    params.require(:cv).permit(:name, :email)
  end
end
