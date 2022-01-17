Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources 'main', only: [:index] # TODO: very bad, change on points.

      post 'user_create', action: 'create', controller: 'users'
      post 'user_auth', action: 'auth', controller: 'users'
      post 'sale_ticket', action: 'sale_ticket', controller: 'sales'
      post 'add_session', action: 'add_session', controller: 'sessions'
      get 'get_sessions', action: 'get_sessions', controller: 'sessions'
    end
  end
end
