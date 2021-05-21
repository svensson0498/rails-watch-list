Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


resources :bookmarks, only: [:destroy]
resources :lists do
    resources :bookmarks, only: [:new, :create,]
end
root to: 'lists#index'
end
