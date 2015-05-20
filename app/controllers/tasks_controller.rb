class TasksController < ApplicationController
  before_filter :authenticate_user!
  before_action :all_tasks, only: [:index, :create, :update, :destroy]
  before_action :set_tasks, only: [:edit, :update, :destroy]
  respond_to :html, :js

  def new
    @task = current_user.tasks.new
  end

  def create
    @task = current_user.tasks.create(task_params)
  end

  def update
    @task.update(task_params)
  end

  def destroy
    @task.destroy
  end

  private

  def set_tasks
    @task = current_user.tasks.find(params[:id])
  end

  def all_tasks
    @tasks = current_user.tasks.order(created_at: :desc)
  end

  def task_params
    params.require(:task).permit(:content, :complete)
  end

end
