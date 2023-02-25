Rails.application.routes.draw do
  root to: 'homes#top'
  resources :books
  
  patch 'books/:id/edit' => 'books#update', as: 'update_book'
  delete 'books/:id' => 'books#destroy', as: 'destroy_book'
  
end

