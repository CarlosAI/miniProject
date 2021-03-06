Rails.application.routes.draw do
 
  resources :cars
=begin
	get '/cars' 			index
	post '/cars'			create
	delete '/cars'			delete
	get '/cars/:id'			show
	get '/cars/new'			new
	get '/cars/:id/edit'	edit
	patch '/cars/:id'		update
	put '/cars/:id'			update
=end


  root 'saludos#index', to: 'saludos#index'

  get 'tables', to: 'saludos#tables'
  get 'data', to: 'saludos#data'
  get '/nosotros', to: 'saludos#nosotros'
  get '/login', to: 'saludos#login'
  get '/registrar', to: 'saludos#registrar'

  post '/login', to: 'saludos#login'
  post '/registrar', to: 'saludos#registrar'

  post '/autorizar', to: 'saludos#autorizar'
  post '/iniciar', to: 'saludos#iniciar'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
