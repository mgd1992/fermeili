class SessionsController < ApplicationController
    def create
      user = User.find_by(email: params[:email])
      
      if user && user.authenticate(params[:password])
        token = generate_token(user.id)
        render json: { user: user, token: token }
      else
        render json: { error: 'Correo o contraseña inválidos' }, status: :unauthorized
      end
    end
  
    private
  
    def generate_token(user_id)
      require 'securerandom'
      token = SecureRandom.hex(10)
      token
    end
  end