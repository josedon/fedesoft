class ApplicationController < ActionController::Base
#solo usuarios registrados
#before_action :authenticate_user!
#before_action :authenticate_user!, except: [:index, :home]
#before_action :authenticate_user!, except: [:index, :show]

# Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
protect_from_forgery with: :null_session
end
