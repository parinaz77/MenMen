class AppointmentsController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:user_id])
   
    if @user.user_type == "mentor"
      @appointment = @user.mentor_sessions.find(params[:id])
    else
   	  @appointment = @user.study_sessions.find(params[:id])
    end
  end
  # private

  # def comment_params
  #   params.require(:appointment).permit(:commenter, :body)
  # end
end
