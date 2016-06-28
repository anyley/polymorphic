Rails.application.routes.draw do
  root 'pages#index'
  resources :widget_attrs
  resources :pages
  resources :texts
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
