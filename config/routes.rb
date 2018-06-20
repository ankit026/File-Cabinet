Rails.application.routes.draw do
  #devise_for :users
  #devise_for :users do get '/users/sign_out' => 'devise/sessions#destroy' end
  devise_for :users

  devise_scope :user do
  get '/users/sign_out' => 'devise/sessions#destroy'
  end

  get 'welcome/idex'

  resources :docs
  authenticated :user do
  	root "docs#index", as: "authenticated_root"
  end

  root 'welcome#idex'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
