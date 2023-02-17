Rails.application.routes.draw do
  get 'top'=>'homes#top'
  resources :books
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root :to => 'homes#top'
 patch 'books/:id'=>'books#update', as: 'update_book'
 delete 'books/:id'=>'books#destroy', as: 'destroy_book'

end

