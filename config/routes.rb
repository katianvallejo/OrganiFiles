Rails.application.routes.draw do

  devise_for :users

  resources :employees do
    collection { post :import }
  end

  root to: 'welcome#landing'

end
