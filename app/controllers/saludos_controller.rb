class SaludosController < ApplicationController
  
  def index
  
  end

  def tables
  	@ubica='Que pedo'
  end


  def data
  	@hola='Hola'
  end

  def autorizar
  	puts params
  	puts "Entro en autorizar"
  end
  
end
