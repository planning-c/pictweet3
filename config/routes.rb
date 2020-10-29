Rails.application.routes.draw do
  devise_for :users
    root 'tweets#index'
    resources :tweets do                     #tweets_controllerに対してのresourcesメソッド
      resources :comments, only: [:create]      #users_controllerに対してのresourcesメソッド
    end
    resources :users, only: [:show]
end
