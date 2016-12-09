class AppointmentsController < ApplicationController
  def index
  end

  def new
    @appointment = Appointment.new
  end

  def show
    @user = User.find(params[:id])

    if @user.user_type == "mentor"
     @appointment = @user.mentor_sessions.find(params[:user_id])
   else
    @appointment = @user.study_sessions.find(params[:user_id])
   end
  end


  def create
    

  #   args = params[:appointment]
  #   args[:mentor_id] = params[:user_id]
    
  #   args = params[:appointment]
  #  args[:mentor_id] = params[:user_id]
   

  #  a = Appointment.create(appointment_params)
   
  # redirect_to user_appointment_path(@appointment)

  #   a = User.new_appointment(args)
  #   p "=" * 88
  #   p a
  #  redirect_to user_appointment_path(@appointment)
  # end
  #   @user = User.find(params[:user_id])
   
  #   if @user.user_type == "mentor"
  #     @appointment = @user.mentor_sessions.find(params[:id])
  #   else
  #  	  @appointment = @user.study_sessions.find(params[:id])
  #   end
  end

  # private

  # def comment_params
  #   params.require(:appointment).permit(:commenter, :body)
  # end
