class AppointmentsController < ApplicationController
  def index
  end

  def show
    @appointments = current_user.metor_sessions.find(params[:appointment_id])
  end

  # private

  # def comment_params
  #   params.require(:appointment).permit(:commenter, :body)
  # end
end
