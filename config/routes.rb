Rails.application.routes.draw do
  resources :posts
  resources :pages
  resources :authors

  namespace :admin do
    resources :posts
    resources :pages
    resources :authors
  end

end
