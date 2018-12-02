class SaludosController < ApplicationController
  skip_before_action :verify_authenticity_token  

	def index
	  	if params["status"].present?
		  	@status = params["status"]
		else
			@status = 0
		end
	  
	end

	def tables
	  	@ubica='Que pedo'
	end


	def data
	  	@hola='Hola'
	end

	def login
		puts params
		@mensaje = 1
		@status = 0
	  	if params["id"].present?
	  		@mensaje = 0
	  		# @status = params["id"]
	  	end

	  	if params["status"].present?
	  		@status = params["status"]
	  		puts @status
	  	else
	  		@status = 0
	  	end

	end

  	def registrar
  		puts params
  		@mensaje = 1
	   	if params["id"].present?
	   		@mensaje = 0
		  	@status = params["id"]
		end
	end

	def autorizar
	  	puts params
	  	puts "Entro en autorizar"
	  	response = User.nuevo_usuario(params)
	  	if response == 200 
	  		redirect_to '/login?id=1', :action => "login", :id => 1
	  	else
	  		redirect_to '/registrar?id=2', :id => 0
	  	end
	end

	def iniciar
		puts params
	  	puts "iniciando sesion"
	  	response = User.iniciar_sesion(params)
	  	if response == 200 
	  		puts "Exito en sesions"
	  		redirect_to '/?status=1'
	  	elsif response == 401
	  		puts "Contraseña incorrecta"
	  		redirect_to '/login?status=2'
	  	elsif response == 402
	  		puts "No existe"
	  		redirect_to '/login?status=3'
	  	end
	end
  
end
