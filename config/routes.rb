Rails.application.routes.draw do

  devise_for :users

  get '/index' => 'welcome#index'

  root 'welcome#landing'
end
