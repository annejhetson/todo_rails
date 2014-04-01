class ListsController < ApplicationController
  def index
    @lists = List.all
    render('lists/index.html.erb')
  end

  def new
    @list = List.new()
    render('lists/new.html.erb')
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.show_tasks
    render('lists/show.html.erb')
  end

  def create
    @list = List.new(:name => params[:name])
     if @list.save
       render('lists/success.html.erb')
     else
       render('lists/new.html.erb')
      end
  end

  def new_task
    @list = List.find(params[:id])

    render('lists/add_task.html.erb')
  end

  def add_task
    @list = List.find(params[:id])
    @list.tasks.new(name: params[:name],
                     due_date: params[:due_date],
                     list_id: params[:list_id])
    @list.save
    render('lists/success.html.erb')
  end


end
