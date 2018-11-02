class SessionsController < ApplicationController

 def create
    user_password= params [:session] [:password]  
    user_mail = params [:session] [:email]
    user = user_mail.present? && User.find_by (email: user_mail)

    if user.valid_password? user_password
        sign_in user, store: false
        user.generate_authentication_token!
        user.save
        render json: {status: 'SUCESS', massage: 'Logged in user', data: user}, status: :ok
    else
        render json: {errors: "correo electrónico o contraseña inválidos"}, status:442
    end
    
end
