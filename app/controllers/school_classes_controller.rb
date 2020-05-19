class SchoolClassesController < ApplicationController

  def new
    @school_class = SchoolClass.new
  end

  def show
    current_schoolClass
  end

  def edit
    current_schoolClass
  end

  def create
    @school_class = SchoolClass.create(school_class_params)
    redirect_to "/school_classes/#{@school_class.id}"
  end

  def update
    current_schoolClass
    @school_class.update(school_class_params)
    redirect_to "/school_classes/#{@school_class.id}"
  end


  private

  def school_class_params
    params.require(:school_class).permit!
  end

  def current_schoolClass
    @school_class = SchoolClass.find(params[:id])
  end

end
