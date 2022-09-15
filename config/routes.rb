Rails.application.routes.draw do

  namespace :admin do
    get 'homes/top'
  end
  root :to =>"home#top"
  get "/about"=>"home#about"

  devise_for :admin, skip: [:registrations, :passwords], controllers: {
  sessions: "admin/sessions"}
  devise_for :users, skip: [:passwords],  controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'}

  namespace :user do
    resources :favorites, only: [:index, :show, :edit, :update, :create, :new, :destroy]
    resources :sent_comments, only: [:index, :show, :edit, :update, :create, :new]
    resources :resived_comments, only: [:index, :show, :edit, :update, :create, :new]
    resources :youtes, only: [:index, :show, :edit, :update, :create, :new]
  end


  namespace :admin do
    get '/' => "homes#top"
    resources :genres, only: [:index]
    resources :genre_youtes, only: [:index, :update, :create, :new, :edit]
    resources :genre_comments, only: [:index, :update, :create, :new, :edit]
    resources :reports, only: [:index, :show, :edit, :update]
    resources :users, only: [:index, :show, :edit, :update]
    resources :comments, only: [:index, :show, :edit, :update]
    resources :youtes, only: [:index, :show, :edit, :update]
  end

  post '/guests/guest_sign_in', to: 'user/guests#new_guest'
  post '/guests/guest_admin_sign_in', to: 'admin/guests#new_guest'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end