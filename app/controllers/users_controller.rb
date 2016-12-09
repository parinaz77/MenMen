class UsersController < ActionController::Base
	layout "application"
	# before_action :user_params, only: [:create]

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
		session[:user_id]=@user.id
		redirect_to user_path(@user)
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
