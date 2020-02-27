Rails.application.routes.draw do
  resources :students
  # get 'rayons/index'
  # get 'rayons/edit'
  # get 'rayons/show'
  # get 'rayons/new'
  resources :books
  # get 'books/index'
  # get 'books/edit'
  # get 'books/show'
  # get 'books/new'
  get 'teachers/index'
  get 'teachers/edit'
  get 'teachers/show'
  get 'teachers/new'
  # resources :students
  get 'students/index'
  get 'students/edit'
  get 'students/show'
  get 'students/new'
  get 'namecontrollers/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
