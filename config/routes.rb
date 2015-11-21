Rails.application.routes.draw do

  get 'ratings/show'

  get 'ratings/show'

  resources :labels, only: [:show]

  resources :questions
  resources :advertisements

  resources :topics do
     resources :posts, except: [:index]
     resources :sponsored_posts, except: [:index]
   end

   resources :posts, only: [] do

        resources :comments, only: [:create, :destroy]
      end

   resources :users, only: [:new, :create]
   post 'users/confirm' => 'users#confirm'

   resources :sessions, only: [:new, :create, :destroy]

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
