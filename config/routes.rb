Rails.application.routes.draw do
 
  root 'saludos#index', to: 'saludos#index'

  get 'tables', to: 'saludos#tables'

  get 'data', to: 'saludos#data'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
