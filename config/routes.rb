Rails.application.routes.draw do
  resources :books, only:[:index, :show, :new, :edit, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root :to => 'homes#top'

end

