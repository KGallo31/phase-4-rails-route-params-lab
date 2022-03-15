class StudentsController < ApplicationController

  def index
    # if params[:name]
    #   name = params[:name].capitalize
    #   puts name
    #   if Student.where({first_name: name})
    #     student = Student.where({first_name: name})
    #   elsif Student.where({last_name: name})
    #     student = Student.where({last_name: name})
    #   end
    # else
    #   student = Student.all
    # end
    if (params[:name])
      name = params[:name].capitalize()
      if (Student.where({first_name: name}))
        student = Student.where({first_name: name})
      elsif (Student.where({last_name: name}))
        student = Student.where({last_name: name})
      end
    else 
      student = Student.all
    end
    render json: student
  end

  def show
    students = Student.find(params[:id])
    render json: students
  end

end