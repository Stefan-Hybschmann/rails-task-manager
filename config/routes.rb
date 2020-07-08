Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # I Should Never Call an Ex Upon Drinking
  root to: 'tasks#index'
  get "/tasks/new", to: 'tasks#new'
  get "/tasks/:id", to: 'tasks#show'
  post "/tasks", to: 'tasks#create'
  get "/tasks/:id/edit", to: 'tasks#edit'
  patch "/tasks/:id", to: 'tasks#update'
end
