class StudentsController < ApplicationController

    before_action :current_student, only: [:show, :edit, :update]

    def show
    end
    
    def new
        @student = Student.new
    end
    
    def edit
    end
    
    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end
    
    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end
    
    private
    
    def student_params
        params.require(:student).permit!
    end

    def current_student
        @student = Student.find(params[:id])
    end
end
