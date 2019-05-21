class User < ApplicationRecord
    validates :user_name, uniqueness: true
    validates :e_mail ,uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i,    message: "Solo se permiten letras" }
    validates :password, presence: {with: true, message: "Ingrese contraseña"}
    validates :phone_number, presence: {with: true, message: "Ingrese numero telefonico"}, format: { with: /[0-9]/,    message: "Solo se permiten numeros" }
    
    # Nombre de usuario con el id
    def self.getUserNameById(id)
        
        ret=User.where("id = ?",id).select("id,user_name").all.to_a
        return ret
        
    end

    #Obtener todos los usuarios sin exponer la contraseña
    def self.getProtectedUsers()
        ret=[]
        users=User.all
        
        users.each do |user|
           ret.push(UserSerializer.new(user)) 
        end


        return ret
    end
end
