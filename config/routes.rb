Rails.application.routes.draw do
  resources :attachments
  resources :photos do
    resources :pcomments
  end
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'posts#index'
end
