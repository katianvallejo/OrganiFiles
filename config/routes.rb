Rails.application.routes.draw do
  
  resources :employees do
  	collection { post :import }
  end

  devise_for :users

  root 'welcome#landing'
  
end
