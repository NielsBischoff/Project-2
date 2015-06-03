class tasksController < ApplicationController
  def index
    @tasks = task.all
  end

  def new
    @task = task.new
  end

  def create
    @task = task.new(task_params)
    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def destroy
     @task = Task.find(params[:id])
     @task.destroy
     redirect_to items_path
   end
   
  private

  def task_params
    params.require(:task).permit(:task_description, :time_frame, :priority, :completed)
  end
end
