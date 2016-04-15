Rails.application.routes.draw do
  apipie
  # use_doorkeeper
  devise_for :users, defaults: { format: :json }, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }

  namespace :api do
    namespace :v1 do
      get 'welcome/index'
    end
  end

  root 'welcome#landing'
end
