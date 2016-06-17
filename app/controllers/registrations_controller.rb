class RegistrationsController < Devise::RegistrationsController
# before_filter :authenticate_user!
before_action :user_params, :only => [:create]

def index

   

	end

def new
 
super
	
end


def create
	@user = User.create(user_params)
	sign_in_and_redirect @user
end


private
  	def user_params
    	params.require(:user).permit(:first_name,
    								:last_name,
    								:email,
    								:password,
    								:password_confirmation,
    								:date_of_birth,
    								:gender)
	end


  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:user, keys: [:first_name, :last_name, :email, :password, :password_confirmation])
  # end

end
