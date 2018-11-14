class DepartmentsController < ApplicationController
  def index
    @departments = Department.all
  end

  def show
    @department = Department.find(params[:id])
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to subs_path
    else
      render :new
    end
  end

  def edit
  @department = Department.find(params[:id])
  end

  
end
