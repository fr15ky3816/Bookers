Rails.application.routes.draw do

  resources :books
  root :to => 'homes#top'
  get 'homes/index' => 'homes#index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
