Rails.application.routes.draw do
  
  get 'books/create'
  get 'books/show'
  get 'books/edit'
  get 'books/update'
  get 'books/destroy'
  get 'homes/top' => 'homes#top'
  get 'homes/index' => 'homes#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
