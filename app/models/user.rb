class User < ApplicationRecord


	def self.nuevo_usuario(params)
		if params["email"].present? && params["password"].present? && params["nombre"].present? && params["nick"].present?
			usuario = User.new
			usuario.nombre = params["nombre"]
			usuario.nickname = params["nick"]
			usuario.password = params["password"]
			usuario.correo = params["email"]
			usuario.tipo = "normal"

			if usuario.save
				puts "Usuario nuevo guardado"
				return 200
			else
				puts usuario.erros
			end
		else
			puts "Error en el formulario"
			return 400
		end
	end
end
