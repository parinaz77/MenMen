class AppointmentsController < ApplicationController
  def index
  end

  def show
    @user = User.find(params[:id])
    p "=" * 90
    p @user.user_type
    p @user.study_sessions.first.topic
    if @user.user_type == "mentor"
     @appointment = @user.mentor_sessions.find(params[:user_id])
   else
   	@appointment = @user.study_sessions.find(params[:user_id])
   end
  end

  # private

  # def comment_params
  #   params.require(:appointment).permit(:commenter, :body)
  # end
end
