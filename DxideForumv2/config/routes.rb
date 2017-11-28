Rails.application.routes.draw do
  root 'forums#index'
  resources :forums
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
