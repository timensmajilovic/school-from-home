class TasksController < ApplicationController
    before_action :authenticate_user!, except: [:index]
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
   
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
    @task.user = current_user

    if @task.save
      redirect_to @task
    else
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to @task
    else
      render :edit
    end
  end

  def destroy 
    @task = Task.find(params[:id])

    @task.destroy
    redirect_to :action  => :index
  end

  private

  def task_params
    params.require(:task).permit(:title, :content, :start_time)
  end
end
