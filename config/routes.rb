Rails.application.routes.draw do
  resources :widget_attrs
  resources :pages
  resources :texts
  resources :pictures
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
