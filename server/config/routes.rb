Rails.application.routes.draw do
  namespace :api do
    get 'users/create'
  end
  namespace :api do
    get 'sessions/create'
    get 'sessions/destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
