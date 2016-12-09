class FeedbacksController < ApplicationController

	def index
		
	end

	def new
		feedback = Feedback.new
	end

	def create
		@user = User.find(params[:user_id])
		@appointment = Appointment.find(params[:appointment_id])

		
		@feedback = Feedback.new(body: params[:feedback][:body], appointment_id: @appointment.id, user_id: @user.id, rating: params[:feedback][:rating])

		if @feedback.save
			redirect_to user_appointment_path(@user.id, @appointment.id)
		else
			flash[:alert] = "Please fill out all fields"
			redirect_to user_appointment_path(@user.id, @appointment.id)
		end
	end

end