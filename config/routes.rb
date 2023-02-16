Rails.application.routes.draw do
  resources :books, only: [:index, :show, :new, :edit, :create,:update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root :to => 'homes#top'
 patch 'books/:id'=>'books#update', as: 'update_book'

end

