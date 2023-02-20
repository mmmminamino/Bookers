Rails.application.routes.draw do
  root to: 'homes#top'
  
  resources :books
  
  post 'books/:id'=>'books#create', as: 'create_book'
  patch 'books/:id'=>'books#update', as: 'update_book'
  delete 'books/:id'=>'books#destroy', as: 'destroy_book'

end

