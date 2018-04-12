Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'registrations' }
  root 'issues#index'

  resources :issues do
  	resources :opinions
  end
end
