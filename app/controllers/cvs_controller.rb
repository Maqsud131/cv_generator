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

  def update
    @cv = Cv.find(params[:id])

    if @cv.update(cv_params)
      redirect_to @cv
    else
      render 'edit'
    end
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

  def destroy
    @cv = Cv.find(params[:id])
    @cv.destroy

    redirect_to cvs_path
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
                              text_lines_attributes: [:id, :content, :_destroy]],
      educations_attributes: [:id,
                              :institution,
                              :certificate_title,
                              :start_date,
                              :end_date,
                              :content,
                              :_destroy],
      achievements_attributes: [:id, :content, :_destroy],
      skills_attributes: [:id, :category, :content, :_destroy],
      projects_attributes: [:id, :title, :content, :tech_stack, :link, :_destroy])
  end
end
