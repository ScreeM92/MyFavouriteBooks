Rails.application.routes.draw do
  # use the books controller
  resources :books	
  root 'books#index'

  # use the books controller
  resources :author	
  root 'author#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
