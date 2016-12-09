class AppointmentsController < ApplicationController
  
  def index
  end

  def new
    @appointment = Appointment.new
  end

  def show
    
    @user = User.find(params[:user_id])
     if @user.user_type == "mentor"
       @appointment = @user.mentor_sessions.find(params[:id])
     else
      @appointment = @user.study_sessions.find(params[:id])
     end
  
  end


  def create

    p "%" * 34
    p params
    
  @user = User.find(params[:user_id])

  start_time = params[:appointment][:start_time]
  end_time = params[:appointment][:end_time]
  topic = params[:appointment][:topic]

  appointment = Appointment.new(mentor_id: params[:user_id], start_time: start_time, end_time: end_time, topic: topic )
  
  if appointment.save
     redirect_to user_path(@user)
     flash[:alert] = "Session slot created successfully!"
  end
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
  end




