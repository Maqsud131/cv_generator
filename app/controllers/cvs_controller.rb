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
    @cv = Cv.find(params[:id])
  end

  def show
    @cv = Cv.find(params[:id])

    respond_to do |format|
      format.html
      format.pdf do
        render pdf: @cv.name   # Excluding ".pdf" extension.
      end
    end
  end

  private

  def cv_params
    params.require(:cv).permit(:name, :email, 
      experiences_attributes: [:id,
                              :organization,
                              :title,
                              :start_date,
                              :end_date,
                              :_destroy, 
                              text_lines_attributes: [:id, :content]],
      educations_attributes: [:id,
                              :institution,
                              :certificate_title,
                              :start_date,
                              :end_date,
                              :content])
  end
end
