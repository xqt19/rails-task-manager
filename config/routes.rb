Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#home'
  post 'tasks', to: 'tasks#create'
  patch 'tasks/:id', to: 'tasks#update', as: 'task'
  root to: 'tasks#home'
  get 'tasks/new', to: 'tasks#new', as: 'new'
  get 'tasks/:id', to: 'tasks#show', as: 'show'
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  delete 'tasks/:id', to: 'tasks#destroy', as: 'delete'
end
