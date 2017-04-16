Rails.application.routes.draw do
  resources :aboutus
  resources :terms
  resources :contactus
  resources :videos do
    resources :vcomments
  end
  resources :photos do
    resources :pcomments
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: {
      sessions: 'users/sessions'
  }

resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'homes#index'
  resources :homes do
    resources :posts
    resources :photos
    resources :videos
  end
end
