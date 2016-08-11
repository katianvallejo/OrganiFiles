Rails.application.routes.draw do

  resources :employees

  devise_for :users

  root 'welcome#landing'

end
