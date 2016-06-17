class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
   		@user = User.find_by_id(params[:id])
	end

	def new

	end

	def show_my_friends
		@friends = current_user.friends
	end

	def add_as_friend

		friend = User.find(params["f_id"]["data"])
		current_user.friends << friend

		redirect_to '/show_my_friends'
		
	end


end
