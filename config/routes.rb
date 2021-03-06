Todo::Application.routes.draw do
  match('lists', {via: :get, to: 'lists#index'})
  match('lists', {via: :post, to: 'lists#create'})
  match('lists/new', {via: :get, to: 'lists#new'})
  match('lists/:id', {via: :get, to: 'lists#show'})

  match('lists/:id', {via: :post, to: 'lists#add_task'})
  match('lists/:id/add_task', {via: :get, to: 'lists#new_task'})



  # match('tasks', {via: :get, to: 'tasks#index'})
  # match('tasks', {via: :post, to: 'tasks#create'})
  # match('tasks/new', {via: :get, to: 'tasks#new'})
  # match('tasks/:id', {via: :get, to: 'tasks#show'})
  # match('tasks/:id/edit', {via: :get, to: 'tasks#edit'})
  # match('tasks/:id', {via: [:patch, :put], to: 'tasks#update'})
  # match('tasks/:id', {via: :delete, to: 'tasks#destroy'})
  # match('lists/:list_id/tasks', {via: :post, to: 'tasks#create'})
end
