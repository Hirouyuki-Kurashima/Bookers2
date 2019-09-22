Rails.application.routes.draw do
  get 'users/_userinfo'
  get 'users/edit'
  get 'users/index'
  get 'users/show'
  get 'home/about'
  get 'home/index'
  get 'books/edit'
  get 'books/index'
  get 'books/show'
  devise_for :users
	root 'home#index'
    #devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users
    get '/home/about' => 'home#about'
    resources :books, only:[:show, :edit, :index, :destroy, :create, :update]
    get 'books' => 'books#index'
    get 'books' => 'edit'
end
