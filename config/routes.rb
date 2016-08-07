Rails.application.routes.draw do
    devise_for :users, controllers: {
        sessions: 'users/sessions',
        registrations: 'users/registrations'
      }
  
  resources :posts do
  	collection do
  	get 'okinawa'
  end
end
  root 'welcome#index'
  post "posts/new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
