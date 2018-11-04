Rails.application.routes.draw do
  get 'users/show'
  get 'posts/new'
  get 'posts/create'
  devise_for :users
  resources :posts, :users do
    resources :comments
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'posts#index'
  get 'feed', to: 'posts#feed', as: :prefix
end
