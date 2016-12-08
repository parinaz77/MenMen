class UsersController < ActionController::Base
	before_action :user_params, only: [:create]

	def new
		@user = User.new
	end

	def index
	end

	def show
		@user = User.find(params[:id])
	end


def create
	@user = User.new(user_params)

	if @user.save
		redirect_to @user
	else
		flash[:alert] = "Please fill out all fields"
		render 'new'
	end
end

private
def user_params
	params.require(:user).permit(:name,:password,:email,:telephone,:user_type)
end
end
