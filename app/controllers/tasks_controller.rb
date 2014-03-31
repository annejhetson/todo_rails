class TasksController < ApplicationController
  def index
    @tasks = Task.all
    @tasks_done = Task.done_tasks
    @tasks_not_done = Task.not_done_tasks
    render('tasks/index.html.erb')
  end

  def new
    @task = Task.new
    render('tasks/new.html.erb')
  end

  def show
    @task = Task.find(params[:id])
    render('tasks/show.html.erb')
  end

  def create
    @task = Task.new(name: params[:name],
                     due_date: params[:due_date])
    if @task.save
      render('tasks/success.html.erb')
    else
      render('tasks/new.html.erb')
    end
  end

  def edit
    @task = Task.find(params[:id])
    render('tasks/edit.html.erb')
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(name: params[:name],
                    due_date: params[:due_date],
                    done: params[:done])
      render('tasks/success.html.erb')
    else
      render('tasks/edit.html.erb')
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    render('tasks/delete.html.erb')
  end

  def mark_done
    @task = Task.find(params[:id])
    @task.update(done: true)
    render('tasks/done.html.erb')
  end
end
