class ListsController < ApplicationController
  def index
    @lists = List.all
    render('lists/index.html.erb')
  end

  def new
    @list = List.new
    render('lists/new.html.erb')
  end

  def show
    @list = List.find(params[:id])
    @tasks = @list.show_tasks
    render('lists/show.html.erb')
  end
end
