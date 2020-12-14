Rails.application.routes.draw do
  resources :teachers
  devise_for :users
  resources :lectures
  get 'home/home'
  root 'home#home'
  get 'contact', to: 'home#contact'
  post 'request_contact', to: 'home#request_contact'
  get 'home/lectures'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
