class TasksController < ApplicationController
  respond_to :html, :js

  def index
    @tasks = Task.order(created_at: :desc)
  end

end
