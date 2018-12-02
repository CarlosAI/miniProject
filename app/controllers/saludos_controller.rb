class SaludosController < ApplicationController
  skip_before_action :verify_authenticity_token  

  def index
  
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
	  	if params["id"].present?
	  		@mensaje = 0
	  		@status = params["id"]
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
  
end
