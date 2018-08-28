class SaludosController < ApplicationController
  
  def index
  	name='Bienvenido;)'
  	@res=hola(name);
  end

  def tables
  	@ubica='Que pedo'
  end


  def data
  	@hola='Hola'
  end
  
end
