Rails.application.routes.draw do
  root to: 'homes#top'
  get 'books/new'
  get 'books/edit'
  get 'top' => 'homes#top'
  post 'books' => 'books#create'
  get 'books' => 'books#index'
  get 'books/:id'=>'books#show',as: 'book'
  patch 'books/:id'=>'books#update', as: 'update_book'
  delete 'books/:id'=>'books#destroy', as: 'destroy_book'

end

