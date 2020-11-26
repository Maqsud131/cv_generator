Rails.application.routes.draw do
  root 'cvs#index'
  resources :cvs
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
